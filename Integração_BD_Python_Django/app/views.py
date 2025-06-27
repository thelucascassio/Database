from django.shortcuts import render
import pyodbc
from django.http import HttpResponse

def home(request):
    try:
        string_conexao = 'Driver={ODBC Driver 17 for SQL Server};Server=.\SQLEXPRESS;Database=Northwind;UID=sa;PWD=Senha@123'
        conexao = pyodbc.connect(string_conexao)
        print("Conexão bem sucedida!")

        cursor = conexao.cursor()
        cursor.execute("SELECT ProdutoID, NomeProduto, PrecoUnitario from Produtos")
        lista_produtos = cursor.fetchall()

        cursor.execute('SELECT CategoriaID, NomeCategoria from Categorias')
        lista_categorias = cursor.fetchall()

        # cursor = conexao.cursor()
        # cursor.execute('CREATE TABLE AAAAAAA(id int identity not null, descricao varchar(10) not null, primary key(id))')
        # conexao.commit()
        
    except Exception as e:
        print(f"Erro ao conectar: {e}")

    return render(request, "home.html", {"produtos": lista_produtos, "categorias": lista_categorias})


