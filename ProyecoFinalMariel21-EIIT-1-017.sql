
/* Nombre: Mariel Hichez Matricula: 21-EIIT-1-017 Seccion: 0541 */


/****** Object:  Database [SoftwareSolutions]    Script Date: 20/08/2022 16:35:11 ******/
CREATE DATABASE [SoftwareSolutions]
GO 
USE [SoftwareSolutions]
GO
/****** Object:  Table [dbo].[Comprador]    Script Date: 20/08/2022 16:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprador](
	[CompradorID] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellido] [varchar](20) NULL,
	[Edad] [varchar](4) NULL,
	[Direccion] [varchar](250) NULL,
	[Telefono] [varchar](15) NULL,
 CONSTRAINT [PK_Comprador] PRIMARY KEY CLUSTERED 
(
	[CompradorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 20/08/2022 16:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaID] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[CompradorID] [int] NULL,
	[ProductoID] [int] NULL,
	[Estado] [varchar](10) NULL,
	[Total] [varchar](250) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 20/08/2022 16:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[PagoID] [int] NOT NULL,
	[FacturaID] [int] NULL,
	[Fecha] [datetime] NULL,
	[Modo] [varchar](10) NULL,
	[Monto] [varchar](100) NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[PagoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 20/08/2022 16:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Codigo] [varchar](30) NULL,
	[Cantidad] [varchar](250) NULL,
	[Precio] [varchar](15) NULL,
	[Garantia] [varchar](10) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 20/08/2022 16:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[ServicioID] [int] NOT NULL,
	[CompradorID] [int] NULL,
	[Empleado] [varchar](40) NULL,
	[Instalacion] [datetime] NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[ServicioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (1, N'Luz Maria', N'Nuñez Reyes', N'38 ', N'Boca chica/Los Rieles/Casa #2', N'8096198012')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (2, N'Eden Adonai', N'Hichez', N'19', N'Santo Domingo/Ensanche Ozama/ Calle Carmelitas/Casa #6', N'8297221640')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (3, N'Grismailin Andreina', N'Robles', N'21', N'Avenida Venezuela/Frente al Scotiabank', N'8294689148')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (4, N'Jean Marie', N'Acevedo Guillermo', N'20', N'El 4 del vijia/Colmado Yudelka', N'8097601445')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (5, N'Mariorfi', N'Alberto Santana', N'27', N'Los Jardines/Calle Cibao/Casa #7', N'8492162402')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (6, N'Erick', N'Rojas Feliciano', N'30', N'Zona Colonial/Calle Palo Hincado/Apartamento Lina 3', N'8094778574')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (7, N'Samuel', N'Lopez Victoriano', N'25', N'Los Mameyes/Calle Jerusalen/Casa #9', N'8293083340')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (8, N'Jeremy Jesus', N'Garcia', N'40', N'San Jose De Mendosa/Hoyo Solo/Casa #12', N'8296855949')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (9, N'Corina ', N'Martinez', N'22', N'Brisas Del Eden/Calle 13/Frente A La Parroquia San Cirilo', N'8096688759')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (10, N'Milagros', N'Batista Tejeda', N'32', N'Villa Maia/Calle Federico Valasquez/Aparamento HB12', N'8093072349')
INSERT [dbo].[Comprador] ([CompradorID], [Nombre], [Apellido], [Edad], [Direccion], [Telefono]) VALUES (11, N'Laura ', N'Navarro Morfa', N'36', N'Avenida Las Americas/Calle Mirador 2da/Casa #6', N'8099490739')
GO
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (1, CAST(N'2022-06-15T00:00:00.000' AS DateTime), 1, 3, N'Pago', N'2')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (2, CAST(N'2022-06-22T00:00:00.000' AS DateTime), 2, 6, N'Pendiente', N'8')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (3, CAST(N'2022-06-27T00:00:00.000' AS DateTime), 3, 7, N'Pago', N'1')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (4, CAST(N'2022-07-05T00:00:00.000' AS DateTime), 4, 4, N'Pendiente', N'4')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (5, CAST(N'2022-07-12T00:00:00.000' AS DateTime), 5, 9, N'Pendiente', N'3')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (6, CAST(N'2022-07-17T00:00:00.000' AS DateTime), 6, 1, N'Pago', N'1')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (7, CAST(N'2022-07-22T00:00:00.000' AS DateTime), 7, 7, N'Pendiente', N'3')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), 8, 8, N'Pago', N'4')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (9, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 9, 11, N'Pendiente', N'5')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (10, CAST(N'2022-08-04T00:00:00.000' AS DateTime), 10, 5, N'Pago', N'1')
INSERT [dbo].[Factura] ([FacturaID], [Fecha], [CompradorID], [ProductoID], [Estado], [Total]) VALUES (11, CAST(N'2022-08-15T00:00:00.000' AS DateTime), 11, 7, N'Pago', N'2')
GO
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (1, 1, CAST(N'2022-06-15T00:00:00.000' AS DateTime), N'Cash', N'22,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (2, 2, CAST(N'2022-06-22T00:00:00.000' AS DateTime), N'Mensual', N'96,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (3, 3, CAST(N'2022-08-27T00:00:00.000' AS DateTime), N'Cash', N'7,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (4, 4, CAST(N'2022-07-05T00:00:00.000' AS DateTime), N'Mensual', N'28,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (5, 5, CAST(N'2022-07-12T00:00:00.000' AS DateTime), N'Mensual', N'30,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (6, 6, CAST(N'2022-08-17T00:00:00.000' AS DateTime), N'Cash', N'11,500')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (7, 7, CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'Mensual', N'21,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (8, 8, CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'Cash', N'36,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (9, 9, CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'Pendiente', N'40,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (10, 10, CAST(N'2022-08-04T00:00:00.000' AS DateTime), N'Cash', N'8,000')
INSERT [dbo].[Pago] ([PagoID], [FacturaID], [Fecha], [Modo], [Monto]) VALUES (11, 11, CAST(N'2022-08-15T00:00:00.000' AS DateTime), N'Cash', N'14,000')
GO
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (1, N'CSS14567', N'2', N'11,500', N'1 Año')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (2, N'ALI08760', N'3', N'5,000', N'6 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (3, N'CNP75381', N'3', N'11,000', N'8 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (4, N'MAS12390', N'2', N'7,000', N'3 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (5, N'QWE34568', N'2', N'8,000', N'1 Año')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (6, N'IRF762905', N'2', N'12,000', N'1 Año')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (7, N'NSZ73459', N'2', N'7,000', N'7 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (8, N'VGR09124', N'1', N'9,000', N'6 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (9, N'RPQ29834', N'1', N'10,000', N'2 Años')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (10, N'ZPJ12876', N'3', N'6,000', N'6 Meses')
INSERT [dbo].[Producto] ([ProductoID], [Codigo], [Cantidad], [Precio], [Garantia]) VALUES (11, N'ASD56890', N'3', N'8,000', N'1 Año')
GO
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (1, 1, N'Amado Martinez', CAST(N'2022-06-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (2, 2, N'Jesus Lopez', CAST(N'2022-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (3, 3, N'Maris Castillo', CAST(N'2022-06-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (4, 4, N'Juan Rijo', CAST(N'2022-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (5, 5, N'Niurka Perez', CAST(N'2022-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (6, 6, N'Amado Martinez', CAST(N'2022-07-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (7, 7, N'Maicol Arias', CAST(N'2022-07-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (8, 8, N'Maris Castillo', CAST(N'2022-07-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (9, 9, N'Juan Rijo', CAST(N'2022-08-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (10, 10, N'Jesus Lopezz', CAST(N'2022-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Servicio] ([ServicioID], [CompradorID], [Empleado], [Instalacion]) VALUES (11, 11, N'Maicol Arias', CAST(N'2022-08-17T00:00:00.000' AS DateTime))


GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Comprador] FOREIGN KEY([CompradorID])
REFERENCES [dbo].[Comprador] ([CompradorID])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Comprador]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Producto] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Producto]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Factura] FOREIGN KEY([FacturaID])
REFERENCES [dbo].[Factura] ([FacturaID])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Factura]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Comprador] FOREIGN KEY([CompradorID])
REFERENCES [dbo].[Comprador] ([CompradorID])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Comprador]
GO
USE [master]
GO
ALTER DATABASE [SoftwareSolutions] SET  READ_WRITE 
GO
