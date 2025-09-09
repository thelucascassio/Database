-- Questão 1
select
	count(*) as qtd_clientes
from Clientes

-- Questão 2
select
	count(*) as qtd_produtos
from Produtos

-- Questão 3
select
	count(fax) as clientes_com_fax
from Clientes

-- Questão 4
select
	distinct(cidade) as cidades
from Clientes
order by cidade