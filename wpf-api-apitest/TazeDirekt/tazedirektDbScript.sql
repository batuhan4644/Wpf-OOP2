USE [TazeDirekt]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 13.04.2020 18:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](80) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 13.04.2020 18:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](80) NULL,
	[Aciklama] [text] NULL,
 CONSTRAINT [PK_Tedarikci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 13.04.2020 18:31:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[TedarikciId] [int] NULL,
	[AnalizliMi] [bit] NULL,
	[OrganikMi] [bit] NULL,
	[YerliUretimMi] [bit] NULL,
	[SekersizMi] [bit] NULL,
	[Aciklama] [text] NULL,
	[Fiyat] [decimal](18, 0) NULL,
	[ResimYolu] [nvarchar](250) NULL,
	[KategoriId] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (1, N'Meyve - Sebze                                                                   ')
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (2, N'Et Ürünleri                                                                     ')
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (3, N'Süt ve Süt Ürünleri                                                             ')
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (4, N'Kahvaltılık Ürüler                                                              ')
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (5, N'Temel Gıdalar                                                                   ')
INSERT [dbo].[Kategori] ([Id], [Adi]) VALUES (6, N'Atıştırmalıklar                                                                 ')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Tedarikci] ON 

INSERT [dbo].[Tedarikci] ([Id], [Adi], [Aciklama]) VALUES (1, N'Kale ', NULL)
INSERT [dbo].[Tedarikci] ([Id], [Adi], [Aciklama]) VALUES (2, N'Ali Oğuz ', NULL)
INSERT [dbo].[Tedarikci] ([Id], [Adi], [Aciklama]) VALUES (3, N'Taze ', NULL)
SET IDENTITY_INSERT [dbo].[Tedarikci] OFF
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (1, N'Yer ', 1, 1, 0, 1, 0, N'Yer elması açıklama', NULL, N'images/urunler/adacayi.jpg', 1)
INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (2, N'Boza', 2, 1, 1, 1, 0, N'Eski yılların tarifi ile boza.', NULL, N'images/urunler/bitkiCayi.jpg', 1)
INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (1009, N'ekmek', 3, 1, 0, 1, 0, N'ekmek', CAST(28 AS Decimal(18, 0)), N'images/urunler/boza.jpg', 5)
INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (1011, N'aaa', 3, 0, 1, 1, 0, N'dddd', CAST(343 AS Decimal(18, 0)), N'images/urunler/yeniurun.jpg', 3)
INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (1013, N'', NULL, 0, 0, 0, 0, N'', NULL, N'images/urunler/yeniurun.jpg', NULL)
INSERT [dbo].[Urun] ([Id], [Adi], [TedarikciId], [AnalizliMi], [OrganikMi], [YerliUretimMi], [SekersizMi], [Aciklama], [Fiyat], [ResimYolu], [KategoriId]) VALUES (1014, N'deeneme', 3, 0, 1, 0, 0, N'deneme', CAST(25 AS Decimal(18, 0)), N'images/urunler/yeniurun.jpg', 6)
SET IDENTITY_INSERT [dbo].[Urun] OFF
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Kategori] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Kategori]
GO
ALTER TABLE [dbo].[Urun]  WITH CHECK ADD  CONSTRAINT [FK_Urun_Tedarikci] FOREIGN KEY([TedarikciId])
REFERENCES [dbo].[Tedarikci] ([Id])
GO
ALTER TABLE [dbo].[Urun] CHECK CONSTRAINT [FK_Urun_Tedarikci]
GO
