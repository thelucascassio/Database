USE [Aulas_BD]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[data_nascimento] [date] NULL,
	[turma_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[cidade_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cor] [varchar](30) NOT NULL,
	[placa] [varchar](8) NOT NULL,
	[ano_fabricacao] [int] NOT NULL,
	[preco] [numeric](10, 2) NULL,
	[modelo_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[estado_id] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[nomeDiretor] [varchar](90) NULL,
	[ramal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[sigla] [char](2) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[dataNascimento] [date] NULL,
	[endereco] [varchar](200) NULL,
	[departamento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
	[fabricante_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 08/07/2025 15:27:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aluno] ON 

INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (1, N'Afonso', N'(84) 91234-5678', 17, CAST(N'2007-12-28' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (2, N'Amanda', N'(84) 91234-5678', 18, CAST(N'2007-06-22' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (3, N'Ana Alice', NULL, 16, CAST(N'2007-11-20' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (4, N'Analy', N'(84) 91234-5678', 17, CAST(N'2007-09-28' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (5, N'Arthur', NULL, 17, CAST(N'2008-07-04' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (6, N'Caio', N'(84) 91234-5678', NULL, CAST(N'2007-02-15' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (7, N'Carolina', N'(84) 91234-5678', 18, NULL, 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (8, N'Clara', N'(84) 91234-5678', 17, CAST(N'2007-12-16' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (9, N'Danilo', N'(84) 91234-5678', 17, NULL, 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (10, N'Emilly', NULL, 17, CAST(N'2007-10-17' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (11, N'Beatriz', N'(84) 98888-1234', 16, CAST(N'2008-03-05' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (12, N'Bruno', NULL, 18, CAST(N'2007-01-12' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (13, N'Camila', N'(84) 98765-4321', NULL, CAST(N'2007-09-19' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (14, N'Davi', N'(84) 99876-5432', 17, NULL, 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (15, N'Eduarda', NULL, 17, CAST(N'2008-07-30' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (16, N'Felipe', N'(84) 91111-2222', NULL, NULL, 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (17, N'Gabriela', N'(84) 92222-3333', 18, CAST(N'2007-04-08' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (18, N'Henrique', NULL, 16, CAST(N'2008-11-23' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (19, N'Isabela', N'(84) 93333-4444', 17, CAST(N'2007-06-14' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (20, N'João Pedro', N'(84) 94444-5555', 18, NULL, 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (21, N'Larissa', N'(84) 95555-6666', 17, CAST(N'2007-08-11' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (22, N'Lucas', NULL, 16, CAST(N'2008-10-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (23, N'Mariana', N'(84) 96666-7777', NULL, CAST(N'2007-06-03' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (24, N'Matheus', N'(84) 97777-8888', 18, NULL, 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (25, N'Natalia', NULL, 17, CAST(N'2007-02-27' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (26, N'Otavio', N'(84) 98888-9999', NULL, NULL, 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (27, N'Patricia', N'(84) 99999-0000', 16, CAST(N'2008-09-21' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (28, N'Rafael', NULL, 18, CAST(N'2006-12-09' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (29, N'Sara', N'(84) 90000-1111', 17, NULL, 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (30, N'Thiago', N'(84) 91111-2222', 17, CAST(N'2007-05-06' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[Bairro] ON 

INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (1, N'Moema', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (2, N'Tatuapé', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (3, N'Itaquera', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (4, N'Pinheiros', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (5, N'Liberdade', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (6, N'Cambuí', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (7, N'Taquaral', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (8, N'Barão Geraldo', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (9, N'Sousas', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (10, N'Centro', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (11, N'Gonzaga', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (12, N'Ponta da Praia', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (13, N'Aparecida', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (14, N'Boqueirão', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (15, N'Embaré', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (16, N'Copacabana', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (17, N'Ipanema', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (18, N'Barra', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (19, N'Lapa', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (20, N'Tijuca', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (21, N'Icaraí', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (22, N'Santa Rosa', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (23, N'Centro', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (24, N'Fonseca', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (25, N'Ingá', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (26, N'Centro', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (27, N'Quitandinha', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (28, N'Itaipava', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (29, N'Valparaíso', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (30, N'Corrêas', 6)
SET IDENTITY_INSERT [dbo].[Bairro] OFF
GO
SET IDENTITY_INSERT [dbo].[Carro] ON 

INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (1, N'Preto', N'ABC1A11', 2020, CAST(95000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (2, N'Prata', N'ABC1A12', 2021, CAST(98000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (3, N'Branco', N'ABC1A13', 2022, CAST(102000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (4, N'Vermelho', N'DEF2B21', 2019, CAST(70000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (5, N'Azul', N'DEF2B22', 2020, CAST(74000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (6, N'Cinza', N'DEF2B23', 2021, CAST(78000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (7, N'Branco', N'GHI3C31', 2021, CAST(180000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (8, N'Preto', N'GHI3C32', 2022, CAST(190000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (9, N'Prata', N'GHI3C33', 2023, CAST(200000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (10, N'Preto', N'JKL4D41', 2018, CAST(55000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (11, N'Branco', N'JKL4D42', 2019, CAST(60000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (12, N'Azul', N'JKL4D43', 2020, CAST(62000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (13, N'Prata', N'MNO5E51', 2020, CAST(90000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (14, N'Vermelho', N'MNO5E52', 2021, CAST(95000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (15, N'Cinza', N'MNO5E53', 2022, CAST(98000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (16, N'Preto', N'PQR6F61', 2021, CAST(160000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (17, N'Branco', N'PQR6F62', 2022, CAST(170000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (18, N'Cinza', N'PQR6F63', 2023, CAST(175000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (19, N'Branco', N'STU7G71', 2019, CAST(95000.00 AS Numeric(10, 2)), 7, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (20, N'Prata', N'STU7G72', 2020, CAST(98000.00 AS Numeric(10, 2)), 7, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (21, N'Preto', N'STU7G73', 2021, CAST(102000.00 AS Numeric(10, 2)), 7, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (22, N'Azul', N'VWX8H81', 2018, CAST(68000.00 AS Numeric(10, 2)), 8, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (23, N'Vermelho', N'VWX8H82', 2019, CAST(70000.00 AS Numeric(10, 2)), 8, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (24, N'Branco', N'VWX8H83', 2020, CAST(72000.00 AS Numeric(10, 2)), 8, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (25, N'Cinza', N'YZA9I91', 2021, CAST(110000.00 AS Numeric(10, 2)), 9, 4)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (26, N'Preto', N'YZA9I92', 2022, CAST(115000.00 AS Numeric(10, 2)), 9, 4)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (27, N'Branco', N'YZA9I93', 2023, CAST(120000.00 AS Numeric(10, 2)), 9, 4)
SET IDENTITY_INSERT [dbo].[Carro] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (1, N'Hatch')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (2, N'Sedã')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (3, N'Picape')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (4, N'Utilitário')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cidade] ON 

INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (1, N'São Paulo', N'SP')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (2, N'Campinas', N'SP')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (3, N'Santos', N'SP')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (4, N'Rio de Janeiro', N'RJ')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (5, N'Niterói', N'RJ')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (6, N'Petrópolis', N'RJ')
SET IDENTITY_INSERT [dbo].[Cidade] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (1, N'RH', N'José da Silva', 3001)
INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (2, N'Financeiro', N'Maria José', 3022)
INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (3, N'Compras', N'João', 3311)
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'RJ', N'Rio de Janeiro')
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'SP', N'São Paulo')
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (1, N'Toyota')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (2, N'Chevrolet')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (3, N'Honda')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (1, N'José da Silva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), N'Rua São José, 1221', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (2, N'Maria Mariana', NULL, 16, CAST(N'1991-03-01' AS Date), N'Av. Hermes da Fonseca, 121', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (3, N'Marcos Silva', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (4, N'Ivan Justo', N'3211-8877', 17, CAST(N'2002-08-25' AS Date), N'Rua São João, 21', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (5, N'Cibele da Silva', NULL, 16, CAST(N'1999-12-25' AS Date), N'Av. Hermes da Fonseca, 121', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (6, N'Lúcia Gomes', NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (1, N'Corolla', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (2, N'Yaris', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (3, N'Hilux Cabine Dupla', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (4, N'Onix', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (5, N'Cruze', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (6, N'S10', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (7, N'Civic', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (8, N'Fit', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (9, N'HR-V', 3)
SET IDENTITY_INSERT [dbo].[Modelo] OFF
GO
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([id], [nome]) VALUES (1, N'InfoWeb')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (2, N'Administração')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (3, N'MSI')
SET IDENTITY_INSERT [dbo].[Turma] OFF
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD FOREIGN KEY([turma_id])
REFERENCES [dbo].[Turma] ([id])
GO
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD FOREIGN KEY([cidade_id])
REFERENCES [dbo].[Cidade] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([categoria_id])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([modelo_id])
REFERENCES [dbo].[Modelo] ([id])
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[Estado] ([sigla])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([departamento_id])
REFERENCES [dbo].[Departamento] ([id])
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD FOREIGN KEY([fabricante_id])
REFERENCES [dbo].[Fabricante] ([id])
GO
