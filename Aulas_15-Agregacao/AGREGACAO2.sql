-- Questão 1
select
	distinct(pais)
from Clientes

-- Questão 2
select
	count(*) as Clientes_da_Espanha
from Clientes
where pais = 'Spain'

-- Questão 3
select
	count(*) as Produtos_estoque_baixo
from Produtos
where UnidadesEmEstoque <= 10

-- Questão 4


-- Questão 5
select
	avg(PrecoUnitario)
from Produtos 
where CategoriaID = '3'

