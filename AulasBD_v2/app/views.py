from django.shortcuts import render

import pyodbc


def obter_conexao():
    # define os parametros de conexao
    driver   = '{ODBC Driver 17 for SQL Server}'
    servidor = '.\SQLEXPRESS'
    banco    = 'Aulas_BD'
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

def exercicio_1(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_1.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT  dep.nome as 'departamento',
                    fun.nome, 
                    fun.telefones

            FROM Funcionario fun
            INNER JOIN Departamento dep ON dep.id = fun.departamento_id

            ORDER BY dep.nome, fun.nome
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

def exercicio_2(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_2.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT 
            Turma.nome AS nome_turma,
            Aluno.nome AS nome_aluno,
            Aluno.idade
            FROM 
                Aluno
            JOIN 
                Turma ON Aluno.turma_id = Turma.id
            ORDER BY 
                Turma.nome,
                Aluno.nome;
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

def exercicio_3(request):
    # define a página HTML (template) que deverá será carregada
    template = 'exercicio_3.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # define o comando SQL que será executado
        sql = '''
            SELECT 
                Estado.nome AS nome_estado,
                Cidade.nome AS nome_cidade,
                Bairro.nome AS nome_bairro
            FROM 
                Bairro
            JOIN 
                Cidade ON Bairro.cidade_id = Cidade.id
            JOIN 
                Estado ON Cidade.estado_id = Estado.sigla
            ORDER BY 
                Estado.nome, Cidade.nome, Bairro.nome;
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

def exercicio_4(request):
    template = 'exercicio_4.html'
    try:
        conexao = obter_conexao()
        cursor = conexao.cursor()
        sql = '''
            SELECT 
                f.descricao AS fabricante,
                m.descricao AS modelo,
                c.ano_fabricacao,
                c.cor,
                c.placa,
                c.preco,
                cat.descricao AS categoria
            FROM 
                Carro c
            JOIN 
                Modelo m ON c.modelo_id = m.id
            JOIN 
                Fabricante f ON m.fabricante_id = f.id
            JOIN 
                Categoria cat ON c.categoria_id = cat.id
            ORDER BY 
                f.descricao,
                m.descricao,
                c.ano_fabricacao
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