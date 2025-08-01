from django import forms
from django.http import HttpResponseRedirect
from django.shortcuts import render


from .util_conexao import *
from .util_views import *


# DEFINE O PREFIXO DA PÁGINA HTML (TEMPLATE) QUE DEVERÁ SERÁ CARREGADA
#    - Exemplo: 'categorias', 'funcionarios'
TEMPLATE_PREFIXO = 'alunos'


# COMANDO SELECT GERAL PARA RETORNAR OS REGISTROS
SQL_SELECT_GERAL = """
    SELECT  aluno.id,
            aluno.nome,
            aluno.telefones,
            aluno.idade,
            aluno.data_nascimento as nasc,
            turma.nome
    
    FROM    Aluno aluno
    INNER JOIN Turma turma ON turma.id = aluno.turma_id 
""" 

# COMANDO SQL PARA RETORNAR TODOS OS REGISTROS DEFININDO A ORDENAÇÃO
SQL_LISTAGEM = SQL_SELECT_GERAL + '\n    ' \
             + 'ORDER BY Aluno.nome'


# COMANDO SQL PARA SELECIONAR O REGISTRO PELO "id" INFORMADO
SQL_OBTER_REGISTRO = SQL_SELECT_GERAL + '\n    ' \
                   + 'WHERE   Aluno.id = {}'



# ======================================================================== #
# COMANDO SQL PARA EXCLUIR UM REGISTRO
# ======================================================================== #
SQL_EXCLUSAO = """ 
    DELETE FROM Aluno 
    WHERE id = {}
"""


# ======================================================================== #
# COMANDO SQL PARA INCLUIR UM REGISTRO
# 
# ATENÇÃO: observe o tipo de campo (VARCHAR, INT, DATE...) e 
#          se o seu valor deve estar entre aspas-simples ('')
# ======================================================================== #
SQL_INCLUSAO = """ 
    INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id) 
    VALUES('{}', '{}', {}, '{}', {})
"""


# ======================================================================== #
# COMANDO SQL PARA ALTERAR UM REGISTRO
# 
# ATENÇÃO-1: insira os campos na MESMA ORDEM utilizada no SQL_INCLUSAO
# 
# ATENÇÃO-2: observe o tipo de campo (VARCHAR, INT, DATE...) e 
#            se o seu valor deve estar entre aspas-simples ('')
# ======================================================================== #
SQL_ALTERACAO = """
    UPDATE TABELA 

    SET nome = '{}',
        telefones = '{}', 
        idade = {}, 
        data_nascimento = '{}',
        turma_id = {} 
    
    WHERE id = {}
"""

# CLASSE QUE HERDA DE "ViewGenericCRUD"
class ViewCRUD (ViewGenericCRUD):
    # metodo para obter os dados informados no <form> HTML
    def obter_campos_formulario(self):
        return [    
            # OBS-1: INFORME OS NOMES DOS CAMPOS NA ORDEM 
            #        QUE APARECEM NO SQL DE INCLUSAO/ALTERACAO 
            'nome',
            'telefones',
            'idade',
            'data_nascimento',
            # 0BS-2: DEIXAR O ID POR ULTIMO
            'id',
        ]

    



# ======================================================================== #
# A T E N Ç Ã O - ESCOLHA 1 DENTRE OS 2 FORMULÁRIOS DE EXEMPLO ABAIXO      #
#                 E APAGUE AQUELE QUE VOCÊ NÃO FOR USAR                    #
# ======================================================================== #

# =============================================================
# FORMULÁRIO - EXEMPLO 1
# =============================================================
class Formulario(forms.Form):
    # ID (DEIXAR ASSIM, NÃO ALTERAR)
    id = forms.IntegerField(label='ID', 
            widget=forms.TextInput(attrs={'readonly': 'readonly'}), required=False)
    # campos do formulario
    nome = forms.CharField(label='Nome', max_length=30, required=True)
        
# =============================================================
# FORMULÁRIO - EXEMPLO 2   ( CONTENDO CAMPO <SELECT> )
# =============================================================
class Formulario(forms.Form):
    # ID (DEIXAR ASSIM, NÃO ALTERAR)
    id = forms.IntegerField(label='ID', 
            widget=forms.TextInput(attrs={'readonly': 'readonly'}), required=False)
    # campos do formulario
    nome = forms.CharField(label='Nome', max_length=90, required=True)
    telefones = forms.CharField(label='Telefones', max_length=20, required=False)
    idade = forms.IntegerField(label='Idade', required=True)           
    dataNascimento = forms.DateField(label='Nascimento', required=True)        
    turma_id = forms.ChoiceField(label='Turma')

    # construtor do Formulario
    def __init__(self, *args, **kwargs):
            # chama construtor da classe-Pai
            super().__init__(*args, **kwargs)
            # obtem os registros da tabela Departamentos
            turmas = executar_select('SELECT id, nome FROM Turma ORDER BY nome')
            # carrega os departamentos no <select> da página usando o ChoiceField
            self.fields['departamento_id'].choices = turmas
    



# ============================================================= #
# OBS: NÃO PRECISA ALTERAR ESTA PARTE DO CÓDIGO                 #
# ============================================================= #
# classe que será utilizada como VIEW e que contem os 
# métodos listar(), editar() e salvar()
VIEW_CRUD = ViewCRUD(
    TEMPLATE_PREFIXO=TEMPLATE_PREFIXO, 
    SQL_LISTAGEM=SQL_LISTAGEM, 
    SQL_OBTER_REGISTRO=SQL_OBTER_REGISTRO, 
    SQL_INCLUSAO=SQL_INCLUSAO, 
    SQL_ALTERACAO=SQL_ALTERACAO,
    SQL_EXCLUSAO=SQL_EXCLUSAO, 
    FORMULARIO_CLASS=Formulario, 
)


