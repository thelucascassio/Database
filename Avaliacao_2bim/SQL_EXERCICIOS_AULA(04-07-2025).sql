CREATE TABLE Turma(
	id int identity (1,1) not null,
	nome varchar(30) not null,
	primary key(id)
)

CREATE TABLE Aluno(
	id int identity (1,1) not null,
	nome varchar(90) not null,
	telefones varchar(20),
	idade int,
	data_nascimento date,
	turma_id int not null,
	primary key(id),
	foreign key(turma_id) references Turma(id),
)

select * from Aluno
select * from Turma
insert into Turma(nome)
	VALUES
	('InfoWeb'),
	('Administração'),
	('MSI')

insert into Aluno(nome, telefones, idade, data_nascimento, turma_id)
	values
	('Afonso', '(84) 91234-5678', 17, '28/12/2007', 1),
	('Amanda', '(84) 91234-5678', 18, '22/06/2007', 1),
	('Ana Alice', null, 16, '20/11/2007', 1),
	('Analy', '(84) 91234-5678', 17, '28/09/2007', 1),
	('Arthur', null, 17, '04/07/2008', 1),
	('Caio', '(84) 91234-5678', null, '15/02/2007', 1),
	('Carolina', '(84) 91234-5678', 18, null, 1),
	('Clara', '(84) 91234-5678', 17, '16/12/2007', 1),
	('Danilo', '(84) 91234-5678', 17, null, 1),
	('Emilly', null, 17, '17/10/2007', 1),
	('Beatriz', '(84) 98888-1234', 16, '05/03/2008', 2),
	('Bruno', null, 18, '12/01/2007', 2),
	('Camila', '(84) 98765-4321', NULL, '19/09/2007', 2),
	('Davi', '(84) 99876-5432', 17, NULL, 2),
	('Eduarda', null, 17, '30/07/2008', 2),
	('Felipe', '(84) 91111-2222', NULL, NULL, 2),
	('Gabriela', '(84) 92222-3333', 18, '08/04/2007', 2),
	('Henrique', null, 16, '23/11/2008', 2),
	('Isabela', '(84) 93333-4444', 17, '14/06/2007', 2),
	('João Pedro', '(84) 94444-5555', 18, NULL, 2),
	('Larissa', '(84) 95555-6666', 17, '11/08/2007', 3),
	('Lucas', null, 16, '25/10/2008', 3),
	('Mariana', '(84) 96666-7777', NULL, '03/06/2007', 3),
	('Matheus', '(84) 97777-8888', 18, NULL, 3),
	('Natalia', null, 17, '27/02/2007', 3),
	('Otavio', '(84) 98888-9999', NULL, NULL, 3),
	('Patricia', '(84) 99999-0000', 16, '21/09/2008', 3),
	('Rafael', null, 18, '09/12/2006', 3),
	('Sara', '(84) 90000-1111', 17, NULL, 3),
	('Thiago', '(84) 91111-2222', 17, '06/05/2007', 3)

select * from Aluno
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

CREATE TABLE Estado(
	sigla char(2) not null,
	nome varchar(30) not null,
	primary key(sigla)
)

CREATE TABLE Cidade(
	id int identity(1,1) not null,
	nome varchar(30) not null,
	estado_id char(2) not null,
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
	('Moema', 1), ('Tatuapé', 1), ('Itaquera', 1), ('Pinheiros', 1), ('Liberdade', 1);
	('Cambuí', 2), ('Taquaral', 2), ('Barão Geraldo', 2), ('Sousas', 2), ('Centro', 2);
	('Gonzaga', 3), ('Ponta da Praia', 3), ('Aparecida', 3), ('Boqueirão', 3), ('Embaré', 3);
	('Copacabana', 4), ('Ipanema', 4), ('Barra', 4), ('Lapa', 4), ('Tijuca', 4);
	('Icaraí', 5), ('Santa Rosa', 5), ('Centro', 5), ('Fonseca', 5), ('Ingá', 5);
	('Centro', 6), ('Quitandinha', 6), ('Itaipava', 6), ('Valparaíso', 6), ('Corrêas', 6);

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