create database ElectricStore1
USE [ElectricStore1]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CommodityID] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commodity]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commodity](
	[CommodityID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[CommodityName] [nvarchar](255) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[UnitInStock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommodityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommodityCategory]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommodityCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](255) NULL,
	[CustomerPhone] [nvarchar](20) NULL,
	[CustomerAddress] [nvarchar](255) NULL,
	[CustomerType] [nvarchar](50) NULL,
	[Discount] [decimal](5, 2) NULL,
	[TotalBought] [decimal](18, 2) NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Quarter] [int] NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CommodityID] [int] NULL,
	[DateID] [int] NULL,
	[CustomerID] [int] NULL,
	[StoreID] [int] NULL,
	[PricedProducts] [int] NULL,
	[PromotionID] [int] NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionID] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](255) NULL,
	[Discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreID] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/10/2023 2:51:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[StoreID] [int] NULL,
	[PhoneNumber] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartID], [CommodityID], [UnitPrice], [Quantity], [UserID]) VALUES (2, 1, CAST(15.99 AS Decimal(18, 2)), 2, 1)
INSERT [dbo].[Cart] ([CartID], [CommodityID], [UnitPrice], [Quantity], [UserID]) VALUES (3, 2, CAST(10.50 AS Decimal(18, 2)), 3, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Commodity] ON 

INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (2, 1, N'Ðèn LED Philips 12W', CAST(10000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (3, 2, N'Cáp điện 2x1.5mm²', CAST(20000.00 AS Decimal(18, 2)), 250)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (4, 3, N'Ổ cắm điện Schneider 2 l?', CAST(45000.00 AS Decimal(18, 2)), 2000)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (5, 4, N'Bộ công cụ điện Makita 18V', CAST(100000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (6, 1, N'Ðèn LED Osram 9W', CAST(90000.00 AS Decimal(18, 2)), 280)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (7, 2, N'Cáp điện 3x2.5mm²', CAST(100000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (8, 3, N'Ổ cắm điện Legrand 4 l?', CAST(50000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (9, 4, N'Bộ công cụ điện Bosch 12V', CAST(750000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (10, 1, N'Ðèn LED Samsung 15W', CAST(170000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (11, 2, N'Cáp điện 5x6mm²', CAST(16000.00 AS Decimal(18, 2)), 200)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (13, 4, N'ac quy', CAST(1000000.00 AS Decimal(18, 2)), 1000)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (14, 2, N'o dien ', CAST(123.00 AS Decimal(18, 2)), 456)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (15, 2, N'Dây điện cỡ lớn', CAST(18000.00 AS Decimal(18, 2)), 120)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (17, 2, N'Day dien co to', CAST(1849.50 AS Decimal(18, 2)), 1222)
INSERT [dbo].[Commodity] ([CommodityID], [CategoryID], [CommodityName], [UnitPrice], [UnitInStock]) VALUES (18, 3, N'o dien nho', CAST(150000.00 AS Decimal(18, 2)), 100)
SET IDENTITY_INSERT [dbo].[Commodity] OFF
GO
SET IDENTITY_INSERT [dbo].[CommodityCategory] ON 

INSERT [dbo].[CommodityCategory] ([CategoryID], [CategoryName]) VALUES (1, N'Ðèn LED')
INSERT [dbo].[CommodityCategory] ([CategoryID], [CategoryName]) VALUES (2, N'Cáp điện')
INSERT [dbo].[CommodityCategory] ([CategoryID], [CategoryName]) VALUES (3, N'Ổ cắm điện')
INSERT [dbo].[CommodityCategory] ([CategoryID], [CategoryName]) VALUES (4, N'Bộ công cụ điện')
SET IDENTITY_INSERT [dbo].[CommodityCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerType], [Discount], [TotalBought], [Comment]) VALUES (11, N'ok', N'ok', N'123', N'vip', CAST(0.10 AS Decimal(5, 2)), CAST(450000.00 AS Decimal(18, 2)), N'ok')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerType], [Discount], [TotalBought], [Comment]) VALUES (12, N'ok', N'ok', N'367890987', N'vip', CAST(0.10 AS Decimal(5, 2)), CAST(1000000.00 AS Decimal(18, 2)), N'pl')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerType], [Discount], [TotalBought], [Comment]) VALUES (13, N'ok', N'ok', N'76543', N'vip', CAST(0.10 AS Decimal(5, 2)), CAST(1000000.00 AS Decimal(18, 2)), N'pl')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Date] ON 

INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (1, 1, 1, 1, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (2, 15, 4, 2, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (3, 20, 6, 2, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (4, 5, 2, 1, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (5, 10, 7, 3, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (6, 18, 9, 3, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (7, 25, 12, 4, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (8, 8, 3, 1, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (9, 30, 5, 2, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (10, 12, 11, 4, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (11, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (12, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (13, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (14, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (15, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (16, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (17, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (18, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (19, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (20, 9, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (21, 10, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (22, 10, 11, 5, 2023)
INSERT [dbo].[Date] ([DateID], [Day], [Month], [Quarter], [Year]) VALUES (23, 10, 11, 5, 2023)
SET IDENTITY_INSERT [dbo].[Date] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (1, 2, 11, 1, 1, 12100, 1, N'Thanh toán khi qua chuyển khoản', N'W5FFNCs6', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (2, 2, 16, 6, 1, 1500000, 0, N'Thanh toán khi qua chuyển khoản', N's7757Nu5', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (3, 2, 19, 9, 1, 1200000, 0, N'Thanh toán khi qua chuyển khoản', N'obNO1cfP', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (4, 2, 20, 10, 1, 1200000, 0, N'Thanh toán khi nhận hàng', N'2ivJBa1H', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (5, 4, 21, 11, 1, 450000, 1, N'Thanh toán khi qua chuyển khoản', N'mwXrYsHU', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (6, 5, 22, 12, 1, 1000000, 0, N'Thanh toán khi qua chuyển khoản', N'NZ0Hh0Fw', 1)
INSERT [dbo].[Order] ([OrderID], [CommodityID], [DateID], [CustomerID], [StoreID], [PricedProducts], [PromotionID], [PaymentMethod], [InvoiceNumber], [UserID]) VALUES (7, 5, 23, 13, 1, 1000000, 1, N'Thanh toán khi qua chuyển khoản', N'SoBnzUiK', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailID], [OrderID], [UnitPrice], [Quantity], [TotalPrice]) VALUES (1, 7, CAST(100000.00 AS Decimal(18, 2)), 13, CAST(1000000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([PromotionID], [PromotionName], [Discount]) VALUES (1, N'Mở đầu tháng rực rỡ 5% ', 0.05)
INSERT [dbo].[Promotion] ([PromotionID], [PromotionName], [Discount]) VALUES (2, N'Giảm giá lễ hội 10%', 0.1)
INSERT [dbo].[Promotion] ([PromotionID], [PromotionName], [Discount]) VALUES (3, N'Khuyến mãi cuối năm 15%', 0.15)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([StoreID], [StoreName], [Location]) VALUES (1, N'Cửa hàng điện Hà Nội', N'123 Hàng Bài, Hà Nội')
INSERT [dbo].[Store] ([StoreID], [StoreName], [Location]) VALUES (2, N'Cửa hàng điện HCM', N'456 Lê Lợi, HCM')
INSERT [dbo].[Store] ([StoreID], [StoreName], [Location]) VALUES (3, N'Cửa hàng điện Ðà Nẵng', N'789 Nguyễn Huế, Ðà Nẵng')
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Email], [Password], [StoreID], [PhoneNumber]) VALUES (1, N'a', N'sa@gmail.com', N'a', 1, N'095676445 ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Commodity]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CommodityCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CommodityID])
REFERENCES [dbo].[Commodity] ([CommodityID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([DateID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([StoreID])
REFERENCES [dbo].[Store] ([StoreID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
