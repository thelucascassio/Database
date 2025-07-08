CREATE TABLE Categoria(
	id int identity (1,1) not null,
	descricao varchar(30) not null,
	primary key(id)
)

CREATE TABLE Fabricante(
	id int identity (1,1) not null,
	descricao varchar(30) not null,
	primary key(id)
)

CREATE TABLE Modelo(
	id int identity (1,1) not null,
	descricao varchar(30) not null,
	fabricante_id int not null,
	primary key(id),
	foreign key(fabricante_id) references Fabricante(id)
)

CREATE TABLE Carro(
	id int identity(1,1) not null,
	cor varchar(30) not null,
	placa varchar(8) not null,
	ano_fabricacao int not null,
	preco numeric(10,2),
	modelo_id int not null,
	categoria_id int not null,
	primary key(id),
	foreign key(modelo_id) references Modelo(id),
	foreign key(categoria_id) references Categoria(id)
)

INSERT INTO Categoria(descricao)
	values
	('Hatch'),
	('Sedã'),
	('Picape'),
	('Utilitário')

INSERT INTO Fabricante(descricao)
	values
	('Toyota'),
	('Chevrolet'),
	('Honda')

INSERT INTO Modelo(descricao, fabricante_id)
	values
	('Corolla', 1), 
	('Yaris', 1), 
	('Hilux Cabine Dupla', 1), 
	('Onix', 2),
	('Cruze', 2),
	('S10', 2), 
	('Civic', 3),         
	('Fit', 3),           
	('HR-V', 3); 

INSERT INTO Carro(cor, placa, ano_fabricacao, preco, modelo_id, categoria_id)
	VALUES
	('Preto', 'ABC1A11', 2020, 95000.00, 1, 2),
	('Prata', 'ABC1A12', 2021, 98000.00, 1, 2),
	('Branco', 'ABC1A13', 2022, 102000.00, 1, 2),
	('Vermelho', 'DEF2B21', 2019, 70000.00, 2, 1),
	('Azul', 'DEF2B22', 2020, 74000.00, 2, 1),
	('Cinza', 'DEF2B23', 2021, 78000.00, 2, 1),
	('Branco', 'GHI3C31', 2021, 180000.00, 3, 3),
	('Preto', 'GHI3C32', 2022, 190000.00, 3, 3),
	('Prata', 'GHI3C33', 2023, 200000.00, 3, 3),
	('Preto', 'JKL4D41', 2018, 55000.00, 4, 1),
	('Branco', 'JKL4D42', 2019, 60000.00, 4, 1),
	('Azul', 'JKL4D43', 2020, 62000.00, 4, 1),
	('Prata', 'MNO5E51', 2020, 90000.00, 5, 2),
	('Vermelho', 'MNO5E52', 2021, 95000.00, 5, 2),
	('Cinza', 'MNO5E53', 2022, 98000.00, 5, 2),
	('Preto', 'PQR6F61', 2021, 160000.00, 6, 3),
	('Branco', 'PQR6F62', 2022, 170000.00, 6, 3),
	('Cinza', 'PQR6F63', 2023, 175000.00, 6, 3),
	('Branco', 'STU7G71', 2019, 95000.00, 7, 2),
	('Prata', 'STU7G72', 2020, 98000.00, 7, 2),
	('Preto', 'STU7G73', 2021, 102000.00, 7, 2),
	('Azul', 'VWX8H81', 2018, 68000.00, 8, 1),
	('Vermelho', 'VWX8H82', 2019, 70000.00, 8, 1),
	('Branco', 'VWX8H83', 2020, 72000.00, 8, 1),
	('Cinza', 'YZA9I91', 2021, 110000.00, 9, 4),
	('Preto', 'YZA9I92', 2022, 115000.00, 9, 4),
	('Branco', 'YZA9I93', 2023, 120000.00, 9, 4);

UPDATE Carro
	SET preco = 95000.00
	WHERE id = 1
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


