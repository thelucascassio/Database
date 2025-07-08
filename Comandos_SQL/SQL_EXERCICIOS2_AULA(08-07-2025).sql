CREATE TABLE Estado(
	sigla char(2) not null,
	nome varchar(30) not null,
	primary key(sigla)
)

CREATE TABLE Cidade(
	id int identity(1,1) not null,
	nome varchar(30) not null,
	estado_id char(2) not null,
	primary key(id),
	foreign key(estado_id) references Estado(sigla)
)

CREATE TABLE Bairro(
	id int identity(1,1) not null,
	nome varchar(30) not null,
	cidade_id int not null,
	primary key(id),
	foreign key(cidade_id) references Cidade(id)

)

INSERT INTO Estado (sigla, nome) VALUES
('SP', 'São Paulo'),
('RJ', 'Rio de Janeiro');

INSERT INTO Cidade (nome, estado_id) VALUES
('São Paulo', 'SP'),
('Campinas', 'SP'),
('Santos', 'SP');

INSERT INTO Cidade (nome, estado_id) VALUES
('Rio de Janeiro', 'RJ'),
('Niterói', 'RJ'),
('Petrópolis', 'RJ');

INSERT INTO Bairro (nome, cidade_id)
	VALUES
	('Moema', 1), ('Tatuapé', 1), ('Itaquera', 1), ('Pinheiros', 1), ('Liberdade', 1),
	('Cambuí', 2), ('Taquaral', 2), ('Barão Geraldo', 2), ('Sousas', 2), ('Centro', 2),
	('Gonzaga', 3), ('Ponta da Praia', 3), ('Aparecida', 3), ('Boqueirão', 3), ('Embaré', 3),
	('Copacabana', 4), ('Ipanema', 4), ('Barra', 4), ('Lapa', 4), ('Tijuca', 4),
	('Icaraí', 5), ('Santa Rosa', 5), ('Centro', 5), ('Fonseca', 5), ('Ingá', 5),
	('Centro', 6), ('Quitandinha', 6), ('Itaipava', 6), ('Valparaíso', 6), ('Corrêas', 6)

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