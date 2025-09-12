-- Questão 1 > OK
select
	distinct(pais)
from Clientes
order by pais

-- Questão 2 > OK
select
	count(*) as Clientes_da_Espanha
from Clientes
where pais = 'Spain'

-- Questão 3 > OK
select
	count(*) as Produtos_estoque_baixo
from Produtos
where UnidadesEmEstoque <= 10

-- Questão 4 >>> revisar inner join
select
	count(*) AS QUANTIDADE
from Produtos p
INNER JOIN Categorias c ON c.CategoriaID =  p.CategoriaID
where p.UnidadesEmEstoque <= 6 and c.NomeCategoria = 'Condiments'


-- Questão 5 >>> revisar
select
	avg(PrecoUnitario) as media_preco
from Produtos p
inner join Categorias c on c.CategoriaID = p.CategoriaID
where c.NomeCategoria = 'Confections'

-- Questão 6 >>> revisar
select
	sum(Quantidade)
from DetalhesPedido o
inner join Produtos p on p.ProdutoID = o.ProdutoID
where p.NomeProduto = 'Outback Lager'

-- Questão 7
select
    COUNT(*) as 'Quantidade de Vendas Registradas',
    SUM(Quantidade) as 'Quantidade Total de Itens Vendidos',
    AVG(Quantidade) as 'Quantidade Média por Venda',
    MIN(Quantidade) as 'Menor Quantidade em uma Venda',
    MAX(Quantidade) as 'Maior Quantidade em uma Venda'
from
    DetalhesPedido
where
    ProdutoID = 22

-- Questão 8
select 
	COUNT(*) as Vendas_para_BR_FR_GER
from Pedidos
where PaisEntrega in ('Brazil', 'France', 'Germany')
-- Questão 9
select 
	sum(d.quantidade) as Vendas_para_BR
from Pedidos p
inner join DetalhesPedido d on d.PedidoID = p.PedidoID
where p.PaisEntrega = 'Brazil'

-- Questão 10
select
	count(*) as Produto1
from DetalhesPedido
where (ProdutoID=1 and Quantidade>=20)
