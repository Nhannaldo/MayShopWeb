USE [MayShop]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartItem](
	[CartItemID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Picture] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[TotalMoney] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Body] [nvarchar](500) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeedBackID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Note] [ntext] NULL,
	[Rating] [int] NULL,
	[DateRate] [datetime] NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedBackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Galery]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Galery](
	[GaleryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Images] [varchar](50) NULL,
 CONSTRAINT [PK_Galery] PRIMARY KEY CLUSTERED 
(
	[GaleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoveItem]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoveItem](
	[LoveItemID] [int] IDENTITY(1,1) NOT NULL,
	[LoveID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Picture] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_LoveItem] PRIMARY KEY CLUSTERED 
(
	[LoveItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoveProduct]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoveProduct](
	[LoveID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_LoveProduct] PRIMARY KEY CLUSTERED 
(
	[LoveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[StatusPay] [bit] NULL,
	[StatusTrans] [int] NULL,
	[DayAdd] [smalldatetime] NULL,
	[DayGo] [smalldatetime] NULL,
 CONSTRAINT [PK_OrderID] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[BrandID] [int] NULL,
	[SizeID] [int] NULL,
	[Title] [nvarchar](350) NULL,
	[Picture] [varchar](50) NULL,
	[Price] [decimal](18, 0) NULL,
	[Description] [ntext] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Size]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/17/2023 12:06:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1, N'YAME')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (2, N'HIYU')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (3, N'LYOS')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (4, N'LEVENTS')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (5, N'CREW')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1002, N'Crew2')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1003, N'crew1')
GO
INSERT [dbo].[Brand] ([BrandID], [Name]) VALUES (1004, N'Quang')
GO
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (1, 8)
GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (2, 9)
GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (3, 10)
GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (4, 11)
GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (5, 12)
GO
INSERT [dbo].[Cart] ([CartID], [CustomerID]) VALUES (6, 13)
GO
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

GO
INSERT [dbo].[CartItem] ([CartItemID], [CartID], [ProductID], [Title], [Picture], [Price], [Quantity], [TotalMoney]) VALUES (61, 3, 6, N'Quần Short Đơn Giản Y Nguyên Bản Ver38', N'QuanYM1.jpg', CAST(287000 AS Decimal(18, 0)), 3, CAST(861000 AS Decimal(18, 0)))
GO
INSERT [dbo].[CartItem] ([CartItemID], [CartID], [ProductID], [Title], [Picture], [Price], [Quantity], [TotalMoney]) VALUES (64, 3, 4, N'Áo Khoác Hoodie Zipper Đơn Giản Y Nguyên Bản Ver64', N'AoKhoacYM2.jpg', CAST(557000 AS Decimal(18, 0)), 1, CAST(557000 AS Decimal(18, 0)))
GO
INSERT [dbo].[CartItem] ([CartItemID], [CartID], [ProductID], [Title], [Picture], [Price], [Quantity], [TotalMoney]) VALUES (65, 3, 3, N'Áo Khoác Varsity Linh Vật Laula Ver1', N'AoKhoacYM1.jpg', CAST(597000 AS Decimal(18, 0)), 2, CAST(1194000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Hoodie')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Áo thun')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Giày')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'Quần short')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (5, N'Quần jean')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (6, N'Quần dài')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (7, N'Áo khoác')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (8, N'Áo sơ mi')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

GO
INSERT [dbo].[Contact] ([ContactID], [Name], [Email], [Body]) VALUES (1, N'a', N'a', N'a')
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (1, N'Đặng Việt Quang', N'0359088784', N'Thủ Dầu Một', N'quangdv.12c8bc.1920@gmail.com', CAST(N'2002-09-05 00:00:00.000' AS DateTime), N'quangdv', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (2, N'Nguyễn Hữu Nhân', N'0128234729', N'Bến Cát', N'nhannh@gmail.com', CAST(N'2002-10-27 00:00:00.000' AS DateTime), N'nhanmoi', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (8, N'Đặng Minh Hải', N'0120480221', N'Bến Cát', N'hai@gmail.com', CAST(N'2022-11-04 00:00:00.000' AS DateTime), N'haipro', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (9, N'Nguyễn Đình Nguyên Vũ', N'01284192499', N'Bến cát', N'vudn@gmail.com', CAST(N'2022-11-03 00:00:00.000' AS DateTime), N'vu1701', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (10, N'Đặng Việt Quang', N'0359088784', N'Thủ dầu một', N'quangdv@gmail.com', CAST(N'2022-11-04 00:00:00.000' AS DateTime), N'quang', N'1234')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (11, N'Leo Messi', N'01284192499', N'Bến cát', N'm10@gmail.com', CAST(N'2022-11-03 00:00:00.000' AS DateTime), N'messi', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (12, N'Ronaldo', N'12342543534', N'Bến cát', N'cr7@gmail.com', CAST(N'2022-11-06 00:00:00.000' AS DateTime), N'ronaldo', N'123')
GO
INSERT [dbo].[Customer] ([CustomerID], [FullName], [PhoneNumber], [Address], [Email], [DateOfBirth], [UserName], [Password]) VALUES (13, N'Nguyễn Hữu Nhân', N'02893189199', N'bến cát', N'nhangavl@gmail.com', CAST(N'2022-11-04 00:00:00.000' AS DateTime), N'nhangahonquang', N'123')
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (1, N'Đặng Việt Quang', N'nhanmoi@gmail.com', NULL, 2, CAST(N'2022-11-10 01:15:30.823' AS DateTime), 6)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (2, N'Đặng Việt Quang', N'quangdva@gmail.com', NULL, 5, CAST(N'2022-11-10 01:26:46.550' AS DateTime), 6)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (3, N'Nguyễn Hữu Moi', N'quangpro@gmail.com', NULL, 4, CAST(N'2022-11-10 01:35:01.430' AS DateTime), 6)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (4, N'Nguyễn Hữu Moi', N'quang59@gmail.com', N'a', 5, CAST(N'2022-11-10 01:39:34.350' AS DateTime), 6)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (5, N'Đặng Việt Quang', N'quang59@gmail.com', N'abc', 5, CAST(N'2022-11-10 01:44:38.647' AS DateTime), 6)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (6, N'Đặng Việt Quang', N'quangpro@gmail.com', N'không đẹp', 1, CAST(N'2022-11-10 05:25:41.543' AS DateTime), 5)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (7, N'Nguyên Vũ', N'vu@gmail.com', N'tạm được', 3, CAST(N'2022-11-10 06:00:11.370' AS DateTime), 5)
GO
INSERT [dbo].[FeedBack] ([FeedBackID], [FullName], [Email], [Note], [Rating], [DateRate], [ProductID]) VALUES (8, N'wefwef', N'fewf', N'ewfewf', 5, CAST(N'2023-07-12 22:42:57.060' AS DateTime), 6)
GO
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[Galery] ON 

GO
INSERT [dbo].[Galery] ([GaleryID], [ProductID], [Images]) VALUES (1, 6, N'QuanYM1.jpg')
GO
INSERT [dbo].[Galery] ([GaleryID], [ProductID], [Images]) VALUES (2, 6, N'QuanYM11.jpg')
GO
SET IDENTITY_INSERT [dbo].[Galery] OFF
GO
SET IDENTITY_INSERT [dbo].[LoveItem] ON 

GO
INSERT [dbo].[LoveItem] ([LoveItemID], [LoveID], [ProductID], [Title], [Picture], [Price]) VALUES (91, 3, 6, N'Quần Short Đơn Giản Y Nguyên Bản Ver38', N'QuanYM1.jpg', CAST(287000 AS Decimal(18, 0)))
GO
INSERT [dbo].[LoveItem] ([LoveItemID], [LoveID], [ProductID], [Title], [Picture], [Price]) VALUES (92, 3, 5, N'Áo Sơ Mi Cổ Lãnh Tụ Đơn Giản Y Nguyên Bản Ver28', N'AoSoMiYM1.jpg', CAST(297000 AS Decimal(18, 0)))
GO
INSERT [dbo].[LoveItem] ([LoveItemID], [LoveID], [ProductID], [Title], [Picture], [Price]) VALUES (93, 3, 4, N'Áo Khoác Hoodie Zipper Đơn Giản Y Nguyên Bản Ver64', N'AoKhoacYM2.jpg', CAST(557000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[LoveItem] OFF
GO
SET IDENTITY_INSERT [dbo].[LoveProduct] ON 

GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (1, 8)
GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (2, 9)
GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (3, 10)
GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (4, 11)
GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (5, 12)
GO
INSERT [dbo].[LoveProduct] ([LoveID], [CustomerID]) VALUES (6, 13)
GO
SET IDENTITY_INSERT [dbo].[LoveProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (1, 2, 1, 5, N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver90', N'AoThunYM1.jpg', CAST(227000 AS Decimal(18, 0)), N'Chất liệu: Cotton Compact 2S

Áo Thun Form Rộng / Mã số: 0021476', CAST(N'2022-10-13 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (2, 2, 1, 1, N'Áo Thun Cổ Tròn Đơn Giản Y Nguyên Bản Ver105', N'AoThunYM2.jpg', CAST(257000 AS Decimal(18, 0)), N'Chất liệu: Cotton Compact 4S

Áo Thun Form Rộng / Mã số: 0021415', CAST(N'2022-10-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (3, 7, 1, 2, N'Áo Khoác Varsity Linh Vật Laula Ver1', N'AoKhoacYM1.jpg', CAST(597000 AS Decimal(18, 0)), N'Chất liệu: Poly

Áo khoác Form Rộng / Mã số: 0021154', CAST(N'2022-10-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (4, 7, 1, 3, N'Áo Khoác Hoodie Zipper Đơn Giản Y Nguyên Bản Ver64', N'AoKhoacYM2.jpg', CAST(557000 AS Decimal(18, 0)), N'Chất liệu: French Terry

Áo khoác Form Rộng / Mã số: 0021482', CAST(N'2022-10-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (5, 8, 1, 4, N'Áo Sơ Mi Cổ Lãnh Tụ Đơn Giản Y Nguyên Bản Ver28', N'AoSoMiYM1.jpg', CAST(297000 AS Decimal(18, 0)), N'Chất liệu: Rayon Plus

Sơ Mi Form Rộng / Mã số: 0021003', CAST(N'2022-10-20 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (6, 4, 1, 5, N'Quần Short Đơn Giản Y Nguyên Bản Ver38', N'QuanYM1.jpg', CAST(287000 AS Decimal(18, 0)), N'Chất liệu: Cotton 2 Da

Quần Short Form Trên Gối / Mã số: 0021365', CAST(N'2022-10-24 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [BrandID], [SizeID], [Title], [Picture], [Price], [Description], [CreateDate]) VALUES (7, 2, 2, 5, N'nhn', N'aothun.jpg', CAST(200000 AS Decimal(18, 0)), N'nguyen', NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (1, N'XS')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (2, N'S')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (3, N'M')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (4, N'XL')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (5, N'2XL')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (6, N'3XL')
GO
INSERT [dbo].[Size] ([SizeID], [Name]) VALUES (7, N'4XL')
GO
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Cart] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Customer_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_Cart_CartItem] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_Cart_CartItem]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_Product_CartItem] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_Product_CartItem]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_Product_FeedBack] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_Product_FeedBack]
GO
ALTER TABLE [dbo].[Galery]  WITH CHECK ADD  CONSTRAINT [FK_Product_Galery] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Galery] CHECK CONSTRAINT [FK_Product_Galery]
GO
ALTER TABLE [dbo].[LoveItem]  WITH CHECK ADD  CONSTRAINT [FK_Love_LoveItem] FOREIGN KEY([LoveID])
REFERENCES [dbo].[LoveProduct] ([LoveID])
GO
ALTER TABLE [dbo].[LoveItem] CHECK CONSTRAINT [FK_Love_LoveItem]
GO
ALTER TABLE [dbo].[LoveItem]  WITH CHECK ADD  CONSTRAINT [FK_Product_LoveItem] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[LoveItem] CHECK CONSTRAINT [FK_Product_LoveItem]
GO
ALTER TABLE [dbo].[LoveProduct]  WITH CHECK ADD  CONSTRAINT [FK_Customer_LoveProduct] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[LoveProduct] CHECK CONSTRAINT [FK_Customer_LoveProduct]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Product] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Brand_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Category_Product] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Category_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Size_Product] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Size_Product]
GO
