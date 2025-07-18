CREATE TABLE Categoria(
	id int identity(1,1) not null,
	descricao varchar(50) not null,
	primary key(id)
)

CREATE TABLE Cliente(
	id int identity(1,1) not null,
	nome varchar(100) not null,
	telefones varchar(20),
	primary key(id)
)

CREATE TABLE Vendedor(
	id int identity(1,1) not null,
	nome varchar(100) not null,
	primary key(id)
)
CREATE TABLE Produto(
	id int identity (1,1) not null,
	descricao varchar(80) not null,
	valor_unitario numeric(10,2) not null,
	Categoria_id int not null,
	primary key(id),
	foreign key(Categoria_id) references Categoria(id)
)
CREATE TABLE Venda(
	id int identity(1,1) not null,
	data_venda date not null,
	Cliente_id int not null,
	Vendedor_id int not null,
	Produto_id int not null,
	quantidade_produto int not null,
	valor_total numeric(10,2) not null,
	primary key(id),
	foreign key(Cliente_id) references Cliente(id),
	foreign key(Produto_id) references Produto(id),
	foreign key(Vendedor_id) references Vendedor(id)
)