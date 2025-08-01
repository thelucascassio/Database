USE [20231011110002]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 01/08/2025 15:59:31 ******/
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
/****** Object:  Table [dbo].[Departamento]    Script Date: 01/08/2025 15:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[nome_diretor] [varchar](90) NULL,
	[ramal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 01/08/2025 15:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[data_nascimento] [date] NULL,
	[endereco] [varchar](200) NULL,
	[departamento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 01/08/2025 15:59:31 ******/
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

INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (1, N'Lucas Cássio', N'(84) 99833-3928', 17, CAST(N'2007-10-05' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (2, N'Marco', N'(84) 99233-3928', 17, CAST(N'2008-06-15' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (3, N'Ermesson', N'(84) 96783-3028', 17, CAST(N'2008-11-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (4, N'Heitor', N'(84) 91543-7728', 17, CAST(N'2008-06-19' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (5, N'Clara', N'(84) 91773-5728', 17, CAST(N'2007-12-16' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (6, N'Gabriela', N'(84) 91893-3928', 17, CAST(N'2008-05-05' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (7, N'Caroline', N'(84) 91653-3928', 17, CAST(N'2007-10-12' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (8, N'Emylly', N'(84) 92223-3928', 17, CAST(N'2007-10-16' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (9, N'Lucas Rabelo', N'(84) 99543-3938', 17, CAST(N'2007-06-20' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (10, N'Guilherme', N'(84) 99443-3923', 17, CAST(N'2007-07-15' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([id], [nome], [nome_diretor], [ramal]) VALUES (1, N'RH', N'José da Silva', 3001)
INSERT [dbo].[Departamento] ([id], [nome], [nome_diretor], [ramal]) VALUES (2, N'Financeiro', N'Maria José', 3022)
INSERT [dbo].[Departamento] ([id], [nome], [nome_diretor], [ramal]) VALUES (3, N'Compras', N'João', 3311)
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (1, N'José da Silva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), N'Rua São José, 1221', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (2, N'Maria Mariana', NULL, 16, CAST(N'1991-03-01' AS Date), N'Av. Hermes da Fonseca, 121', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (3, N'Marcos Silva', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (4, N'Ivan Justo', N'3211-8877', 17, CAST(N'2002-08-25' AS Date), N'Rua São João, 21', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (5, N'Cibele da Silva', NULL, 16, CAST(N'1999-12-25' AS Date), N'Av. Hermes da Fonseca, 121', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [data_nascimento], [endereco], [departamento_id]) VALUES (6, N'Lúcia Gomes', NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([id], [nome]) VALUES (1, N'Informática para Internet')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (2, N'Administração')
SET IDENTITY_INSERT [dbo].[Turma] OFF
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD FOREIGN KEY([turma_id])
REFERENCES [dbo].[Turma] ([id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([departamento_id])
REFERENCES [dbo].[Departamento] ([id])
GO
