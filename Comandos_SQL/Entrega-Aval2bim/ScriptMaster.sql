USE [Avaliacao_2bim_LC]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 15/07/2025 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/07/2025 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[telefones] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 15/07/2025 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](80) NOT NULL,
	[valor_unitario] [numeric](10, 2) NOT NULL,
	[Categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 15/07/2025 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data_venda] [date] NOT NULL,
	[Cliente_id] [int] NOT NULL,
	[Vendedor_id] [int] NOT NULL,
	[Produto_id] [int] NOT NULL,
	[quantidade_produto] [int] NOT NULL,
	[valor_total] [numeric](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedor]    Script Date: 15/07/2025 15:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (1, N'Monitor')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (2, N'Processador')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([id], [nome], [telefones]) VALUES (1, N'João da Silva', N'4444-5555')
INSERT [dbo].[Cliente] ([id], [nome], [telefones]) VALUES (2, N'Maria José', N'3333-2222')
INSERT [dbo].[Cliente] ([id], [nome], [telefones]) VALUES (3, N'José Maria', N'1111-9999')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (1, N'Samsung 22 polegadas', CAST(235.00 AS Numeric(10, 2)), 1)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (2, N'Samsung 26 polegadas', CAST(325.00 AS Numeric(10, 2)), 1)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (3, N'LG 22 polegadas', CAST(244.90 AS Numeric(10, 2)), 1)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (4, N'LG 26 polegadas', CAST(385.50 AS Numeric(10, 2)), 1)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (5, N'Intel i3', CAST(590.00 AS Numeric(10, 2)), 2)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (6, N'Intel i5', CAST(690.00 AS Numeric(10, 2)), 2)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (7, N'Intel i7', CAST(790.00 AS Numeric(10, 2)), 2)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (8, N'AMD 2,7GHZ', CAST(495.00 AS Numeric(10, 2)), 2)
INSERT [dbo].[Produto] ([id], [descricao], [valor_unitario], [Categoria_id]) VALUES (9, N'AMD 3,5GHZ', CAST(788.00 AS Numeric(10, 2)), 2)
SET IDENTITY_INSERT [dbo].[Produto] OFF
GO
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (1, CAST(N'2025-01-01' AS Date), 1, 1, 1, 1, CAST(235.00 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (2, CAST(N'2025-01-11' AS Date), 2, 2, 2, 2, CAST(650.00 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (3, CAST(N'2025-01-21' AS Date), 3, 1, 3, 1, CAST(244.90 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (4, CAST(N'2025-01-31' AS Date), 3, 2, 4, 1, CAST(385.90 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (5, CAST(N'2025-02-01' AS Date), 1, 3, 5, 3, CAST(1770.00 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (6, CAST(N'2025-02-15' AS Date), 2, 1, 6, 4, CAST(2760.00 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (7, CAST(N'2025-03-01' AS Date), 1, 3, 7, 6, CAST(4740.00 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (8, CAST(N'2025-03-22' AS Date), 2, 3, 8, 1, CAST(495.50 AS Numeric(10, 2)))
INSERT [dbo].[Venda] ([id], [data_venda], [Cliente_id], [Vendedor_id], [Produto_id], [quantidade_produto], [valor_total]) VALUES (9, CAST(N'2025-03-31' AS Date), 1, 2, 9, 1, CAST(788.00 AS Numeric(10, 2)))
SET IDENTITY_INSERT [dbo].[Venda] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendedor] ON 

INSERT [dbo].[Vendedor] ([id], [nome]) VALUES (1, N'Adriano da Silva')
INSERT [dbo].[Vendedor] ([id], [nome]) VALUES (2, N'Joana Pereira')
INSERT [dbo].[Vendedor] ([id], [nome]) VALUES (3, N'Meire Moura')
SET IDENTITY_INSERT [dbo].[Vendedor] OFF
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([Categoria_id])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([Cliente_id])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([Produto_id])
REFERENCES [dbo].[Produto] ([id])
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([Vendedor_id])
REFERENCES [dbo].[Vendedor] ([id])
GO
