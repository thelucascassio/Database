INSERT INTO Categoria(descricao)
	values
	('Monitor'),
	('Processador')

INSERT INTO Produto(descricao, valor_unitario, Categoria_id)
	values
	('Samsung 22 polegadas', 235.00, 1),
	('Samsung 26 polegadas', 325.00, 1),
	('LG 22 polegadas', 244.90, 1),
	('LG 26 polegadas', 385.50, 1),
	('Intel i3', 590.00, 2),
	('Intel i5', 690.00, 2),
	('Intel i7', 790.00, 2),
	('AMD 2,7GHZ', 495.00, 2),
	('AMD 3,5GHZ', 788.00, 2)

INSERT INTO Cliente(nome, telefones)
	values
	('João da Silva', '4444-5555'),
	('Maria José', '3333-2222'),
	('José Maria', '1111-9999')

INSERT INTO Vendedor(nome)
	values
	('Adriano da Silva'),
	('Joana Pereira'),
	('Meire Moura')

INSERT INTO Venda(data_venda, quantidade_produto, valor_total, Produto_id, Cliente_id, Vendedor_id)
	values
	('2025-01-01', 1, 235.00, 1, 1, 1),
	('2025-01-11', 2, 650.00, 2, 2, 2),
	('2025-01-21', 1, 244.90, 3, 3, 1),
	('2025-01-31', 1, 385.90, 4, 3, 2),
	('2025-02-01', 3, 1770.00, 5, 1, 3),
	('2025-02-15', 4, 2760.00, 6, 2, 1),
	('2025-03-01', 6, 4740.00, 7, 1, 3),
	('2025-03-22', 1, 495.50, 8, 2, 3),
	('2025-03-31', 1, 788.00, 9, 1, 2)

SELECT
	p.id,
	p.descricao,
	p.valor_unitario,
	c.descricao as categoria
FROM
	Produto p
INNER JOIN
	Categoria c ON p.Categoria_id = c.id

ORDER BY
	categoria,
	p.descricao

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

SELECT * FROM Produto