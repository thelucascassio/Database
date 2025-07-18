from django.shortcuts import render

import pyodbc


def obter_conexao():
    # define os parametros de conexao
    driver   = '{ODBC Driver 17 for SQL Server}'
    servidor = '.\SQLEXPRESS'
    banco    = 'Avaliacao_2bim_LC'
    usuario  = 'sa'
    senha    = 'Senha@123' # poder ser também: "senha", "senha@123", "Senha@123"

    # realiza conexao com o BD
    string_conexao = f'Driver={driver};Server={servidor};Database={banco};UID={usuario};PWD={senha}'
    conexao = pyodbc.connect(string_conexao)
    
    # retorna a conexao  
    return conexao


def home(request):
    # define a página HTML (template) que deverá será carregada
    template = 'home.html'
    return render(request, template)

def exercicio_3a(request):
    # define a página HTML (template) que deverá será carregada
    template = 'questao_3a.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT
                p.id,
                p.descricao,
                p.valor_unitario,
                c.descricao as categoria
            FROM
                Produto p
            JOIN
                Categoria c ON p.Categoria_id = c.id

            ORDER BY
                categoria,
                p.descricao
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})

def exercicio_3b(request):
    # define a página HTML (template) que deverá será carregada
    template = 'questao_3b.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT
                v.data_venda as data,
                v.valor_total,
                p.descricao as produto,
                cliente.nome as cliente,
                vendedor.nome as vendedor
            FROM
                Venda v
            INNER JOIN
                Produto p ON v.Produto_id = p.id
            INNER JOIN
                Cliente cliente ON v.Cliente_id = cliente.id
            INNER JOIN
                Vendedor vendedor ON v.Vendedor_id = vendedor.id

            ORDER BY
                data desc
        '''
        
        # usa o cursor para executar o SQL
        cursor.execute(sql)
        # obtem todos os registros retornados
        registros = cursor.fetchall()

        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, context={'registros': registros})
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})