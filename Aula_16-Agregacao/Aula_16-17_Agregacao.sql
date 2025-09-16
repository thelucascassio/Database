
-- Exercício 1
select top(5)
	p.NomeProduto, sum(dp.Quantidade) as QuantidadeProduto
from DetalhesPedido dp
inner join Produtos p on p.ProdutoID = dp.ProdutoID
group by p.NomeProduto
order by QuantidadeProduto desc

-- Exercício 2
select top(3)
	PaisEntrega, sum(dp.Quantidade) as Quantidade_Vendida
from Pedidos ped
inner join DetalhesPedido dp on dp.PedidoID = ped.PedidoID
group by PaisEntrega
order by Quantidade_Vendida desc

-- Exercício 3
select top(2)
	func.Nome, count(*) as Quantidade_Vendas
from Pedidos p
inner join Funcionarios func on func.FuncionarioID = p.FuncionarioID
group by func.Nome
order by Quantidade_Vendas asc

-- Exercício 4
select top(10)
	p.CidadeEntrega, count(*) as Quantidade_Vendas
from Pedidos p
inner join DetalhesPedido dp on dp.PedidoID = p.PedidoID
group by p.CidadeEntrega
order by Quantidade_Vendas asc


-- Exercício 5
select
	f.NomeEmpresa, c.NomeCategoria, sum(p.UnidadesEmEstoque) as Qtd_Produtos
from Produtos p
inner join Fornecedores f on f.FornecedorID = p.FornecedorID
inner join Categorias c on c.CategoriaID = p.CategoriaID
group by f.NomeEmpresa, c.NomeCategoria
order by f.NomeEmpresa, c.NomeCategoria


