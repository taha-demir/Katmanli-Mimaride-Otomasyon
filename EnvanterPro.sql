USE [EnvanterPro]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorcDetays]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorcDetays](
	[BorcDetayID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[Borc] [money] NULL,
	[Tarih] [datetime] NULL,
	[OdemeTarihi] [datetime] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_BorcDetay] PRIMARY KEY CLUSTERED 
(
	[BorcDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorilers]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorilers](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markalars]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalars](
	[MarkaID] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](50) NULL,
	[KategoriID] [int] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[MarkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteris]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteris](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[TelNo] [char](10) NULL,
	[Adres] [nvarchar](500) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[SatisID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[MusteriID] [int] NULL,
	[Miktar] [decimal](18, 0) NULL,
	[ToplamFiyat] [money] NULL,
	[Tarih] [datetime] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepets]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepets](
	[SepetID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[Miktar] [decimal](18, 0) NULL,
	[ToplamFiyat] [money] NULL,
	[Tarih] [datetime] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Sepets] PRIMARY KEY CLUSTERED 
(
	[SepetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikcilers]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikcilers](
	[TedarikciID] [int] IDENTITY(1,1) NOT NULL,
	[TedarikciAdi] [nvarchar](50) NULL,
	[TedarikciSoyadi] [nvarchar](50) NULL,
	[TelNo] [nchar](10) NULL,
	[Adres] [nvarchar](500) NULL,
	[Mail] [nvarchar](50) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunlers]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunlers](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[MarkaID] [int] NOT NULL,
	[TedarikciID] [int] NOT NULL,
	[UrunAdi] [nvarchar](50) NULL,
	[Miktar] [decimal](18, 2) NOT NULL,
	[AlisFiyati] [decimal](18, 2) NOT NULL,
	[SatisFiyati] [decimal](18, 2) NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Urunlers] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202005192258022_InitialCreate', N'ProEnvanter.DataAccess.Concrete.EntityFramework.ProEnvanterContext', 0x1F8B0800000000000400CD58CB6EDB3814DD0F30FF2068D50152338F4D27905BB8763C305A274595744F4BD70E618AD49054C6FEB659CC27CD2FCCA59E946CC78F2483C21B8BBCF7DC07C9C323FDFBF73FC1A755C2BD27509A49D1F72F7AE7BE07229231138BBE9F99F9FB0FFEA78FBFFE12DCC4C9CAFB51D95D593BF414BAEF3F1A935E13A2A34748A8EE252C5252CBB9E94532213496E4F2FCFC7772714100217CC4F2BCE07B260C4B207FC0C7A11411A426A37C2A63E0BA1CC7993047F56E69023AA511F4FD6F4ADE88272A0CA8DE881A3A8822D0BA67211418E8DD20B2598F157AFC25D5D2F7069C514C33043EF73D2A8434D46011D70F1A42A3A45884290E507EBF4E01EDE6946B288BBB6ECC0FADF3FCD2D6491AC70A2ACAB491C99180175765E348D7FDA4F6FB7563B1B545A36CD5797BFBFE83CA0407E57BDD58D743AEAC5DBBF9B93F03A7F525C099B7CDECACDE3DB8C9ECEFCC1B66DC640AFA0232A32847BF6CC659F405D6F77209A22F32CEDD9431699C6B0DE010064B4199F5779897854C46BE47DA7EA4EB58BB393E458D1361AE2E7DEF1683D319877A4738FD088D54F0070850D440FC8D1A2C1417741243DED38DE89D585FD06B2115DB1FF3799C29554BFA52907B88A962CBE8C5D9D8D51FC4AC02C1B3851CE27B53BAFA0A62611E6DBE2BDF1BB315C4D54809FC2018520E3A1995EDAF9A2D0D55559811442CA1DCC73D87FF4A16FBE07B61446DE6C7978174A1C76C8D0BFD662142047FEB1883A561F30AFDB3941CA8D803129086123689024FB9A10CB77C19C039E3760A56660B7120C796DCA1CBC56D275D408760BA14D464523077AF9ED996719D5B737190E2E6A86E18B2E38A09A6344D719F3A574E39E285C57D337C1F1ECFB549814122BD8572EB6CEB48482774019D590C8D998E99D2C6DE73336AD76B18271B665B56624797AB80ED667709B5E97D656FFF6FACFA21B76F6F478CA6CD68BA489036F326409DE9CEEC725F7B2AA8DAC2E043C9B344ECBA059EF37639D94571C70F47AB99D985AA070FC76991B38BD59A381CAFE66817AB1E3CA2BE92835BE5956387A3B854EB22B9E387A3B558D5856B4D1C915DC1A0ADC48AA14D8C8074B673F74C918D43D5D127DD33FA1CCB754DEAE835DB75582D281966BFBADEA09CC2C4DE4BF289C5966EC2B53690E4A7BF17FEC9879C61BD8DC1940A36076D0A09E7A386BDEC68F09F470F13AD637E9828FEDF6528B34DDD2B348F54059BCA330FF332DD790AC416D5790A4C4773E2CDA4A247AADE2574F59B0B76BCAE8CDF5E57BE7A882DBAF2F5CB7075E58CED5BB2E334E5A6E079B15C2CF80B1B31939875916739A94F16939B741A10F793463002CD160D84FDC02120B23CD58056361331975593B13437A3CAA4BB53C1D0D88A2F856B412383D35685E5AF5B3F28CFD0E42699413C117799493333D01A92196FBD9706E4F9F8B9626EE71CDCA5F649BF46099826C312E04E7CCE188FEBBCC75BB6D00E08BB594A6AC4ACF075D372DBBA46BA95E240A0B27D2348415862BD8724E508A6EF44489FE094DCF0BDE72B2C68B4AE6EC5DD20FB17A2DDF660C4E802F5B52E311A7FFB998ED8EF741FFF03B73C6454D9130000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[BorcDetays] ON 

INSERT [dbo].[BorcDetays] ([BorcDetayID], [MusteriID], [Borc], [Tarih], [OdemeTarihi], [Aktif]) VALUES (1, 1, 0.0000, CAST(N'2020-06-02T22:06:15.000' AS DateTime), CAST(N'2020-06-05T15:32:47.000' AS DateTime), 1)
INSERT [dbo].[BorcDetays] ([BorcDetayID], [MusteriID], [Borc], [Tarih], [OdemeTarihi], [Aktif]) VALUES (2, 4, 0.0000, CAST(N'2020-06-02T22:06:15.000' AS DateTime), CAST(N'2020-06-11T22:06:15.000' AS DateTime), 1)
INSERT [dbo].[BorcDetays] ([BorcDetayID], [MusteriID], [Borc], [Tarih], [OdemeTarihi], [Aktif]) VALUES (3, 2, 0.0000, CAST(N'2020-06-10T19:31:39.897' AS DateTime), CAST(N'2020-06-28T19:16:45.000' AS DateTime), 1)
INSERT [dbo].[BorcDetays] ([BorcDetayID], [MusteriID], [Borc], [Tarih], [OdemeTarihi], [Aktif]) VALUES (4, 1, 250.0000, CAST(N'2020-06-10T19:31:39.897' AS DateTime), CAST(N'2020-06-10T19:31:39.920' AS DateTime), 1)
INSERT [dbo].[BorcDetays] ([BorcDetayID], [MusteriID], [Borc], [Tarih], [OdemeTarihi], [Aktif]) VALUES (5, 1, 0.0000, CAST(N'2020-06-10T23:59:09.083' AS DateTime), CAST(N'2020-06-26T23:59:09.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[BorcDetays] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategorilers] ON 

INSERT [dbo].[Kategorilers] ([KategoriID], [KategoriAdi], [Aktif]) VALUES (1, N'Temizlik Ürünleri', 1)
INSERT [dbo].[Kategorilers] ([KategoriID], [KategoriAdi], [Aktif]) VALUES (2, N'Gıda', 1)
INSERT [dbo].[Kategorilers] ([KategoriID], [KategoriAdi], [Aktif]) VALUES (4, N'Beyaz Eşya', 0)
SET IDENTITY_INSERT [dbo].[Kategorilers] OFF
GO
SET IDENTITY_INSERT [dbo].[Markalars] ON 

INSERT [dbo].[Markalars] ([MarkaID], [MarkaAdi], [KategoriID], [Aktif]) VALUES (1, N'Ülker', 2, 1)
INSERT [dbo].[Markalars] ([MarkaID], [MarkaAdi], [KategoriID], [Aktif]) VALUES (4, N'Arçelik', 4, 1)
INSERT [dbo].[Markalars] ([MarkaID], [MarkaAdi], [KategoriID], [Aktif]) VALUES (1002, N'Vestel', 4, 1)
SET IDENTITY_INSERT [dbo].[Markalars] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteris] ON 

INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (1, N'Ali', N'Yazar', N'1234567891', N'Ankara', 1)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (2, N'Veli', N'Bozar', N'9876543211', N'Antalya', 1)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (4, N'Sarı Çizmeli', N'Mehmet Ağa', N'1234567891', N'İstanbul', 1)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (5, N'Bir Gün', N'Öder Hesabı', N'5468793182', N'Ankara', 0)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (6, N'Diğer', N'Diğer', N'**********', N'**********', 1)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (7, N'Gül', N'Pembe', N'1234567891', N'Adres:', 0)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (8, N'Güz', N'Yağmurları', N'1234567891', N'Gülpembe', 0)
INSERT [dbo].[Musteris] ([MusteriID], [Ad], [Soyad], [TelNo], [Adres], [Aktif]) VALUES (9, N'Diğer', N'Diğer', N'**********', N'**********', 0)
SET IDENTITY_INSERT [dbo].[Musteris] OFF
GO
SET IDENTITY_INSERT [dbo].[Satis] ON 

INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (1, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T19:32:24.213' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (2, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T19:32:24.213' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (3, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T20:45:44.173' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (4, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T20:45:44.173' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (5, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T20:47:26.030' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (6, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T20:48:38.723' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (7, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T20:48:38.723' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (8, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T21:56:44.830' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (9, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:56:44.830' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (10, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (11, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (12, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (13, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (14, 1, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (15, 1003, 1, CAST(1 AS Decimal(18, 0)), 4500.0000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (16, 1003, 1, CAST(1 AS Decimal(18, 0)), 4500.0000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (17, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (18, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (19, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (20, 1, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-02T21:58:37.263' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (21, 1005, 2, CAST(2 AS Decimal(18, 0)), 44.0000, CAST(N'2020-06-10T20:12:36.340' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (22, 1005, 2, CAST(2 AS Decimal(18, 0)), 44.0000, CAST(N'2020-06-10T20:12:36.340' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (23, 1002, 2, CAST(3 AS Decimal(18, 0)), 4.5000, CAST(N'2020-06-10T20:12:36.340' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (24, 1005, 1, CAST(1 AS Decimal(18, 0)), 22.0000, CAST(N'2020-06-10T20:13:03.350' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (25, 1002, 1, CAST(10 AS Decimal(18, 0)), 15.0000, CAST(N'2020-06-10T20:13:03.350' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (26, 1, 1, CAST(6 AS Decimal(18, 0)), 9.0000, CAST(N'2020-06-10T20:14:14.833' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (27, 1002, 1, CAST(5 AS Decimal(18, 0)), 7.5000, CAST(N'2020-06-10T20:14:14.833' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (28, 1002, 1, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-10T20:14:45.867' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (29, 1002, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-10T20:17:28.323' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (30, 1, 1, CAST(1 AS Decimal(18, 0)), 1.5000, CAST(N'2020-06-10T20:19:03.753' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (31, 1, 6, CAST(2 AS Decimal(18, 0)), 3.0000, CAST(N'2020-06-10T23:56:56.403' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (32, 1002, 6, CAST(3 AS Decimal(18, 0)), 4.5000, CAST(N'2020-06-10T23:56:56.403' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (33, 1004, 1, CAST(3 AS Decimal(18, 0)), 13500.0000, CAST(N'2020-06-11T16:01:51.890' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (34, 1004, 1, CAST(3 AS Decimal(18, 0)), 13500.0000, CAST(N'2020-06-11T16:12:17.250' AS DateTime), 1)
INSERT [dbo].[Satis] ([SatisID], [UrunID], [MusteriID], [Miktar], [ToplamFiyat], [Tarih], [Aktif]) VALUES (35, 1002, 1, CAST(12 AS Decimal(18, 0)), 18.0000, CAST(N'2020-06-11T16:16:23.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Satis] OFF
GO
SET IDENTITY_INSERT [dbo].[Tedarikcilers] ON 

INSERT [dbo].[Tedarikcilers] ([TedarikciID], [TedarikciAdi], [TedarikciSoyadi], [TelNo], [Adres], [Mail], [Aktif]) VALUES (2, N'Atiba', N'Hutchinson', N'1903190301', N'Beşiktaş', N'atiba@besiktas.com', 1)
INSERT [dbo].[Tedarikcilers] ([TedarikciID], [TedarikciAdi], [TedarikciSoyadi], [TelNo], [Adres], [Mail], [Aktif]) VALUES (3, N'Adem', N'Ljajic', N'1903190302', N'Beşiktaş', N'adem@besiktas.com', 1)
INSERT [dbo].[Tedarikcilers] ([TedarikciID], [TedarikciAdi], [TedarikciSoyadi], [TelNo], [Adres], [Mail], [Aktif]) VALUES (4, N'Ali', N'Yazar', N'1234567891', N'Ankara', N'ali@besiktas.com', 1)
SET IDENTITY_INSERT [dbo].[Tedarikcilers] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunlers] ON 

INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1, 2, 1, 2, N'Ekmek', CAST(50.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1002, 2, 1, 2, N'Çikolata', CAST(38.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1003, 4, 4, 2, N'Buzdolabı', CAST(50.00 AS Decimal(18, 2)), CAST(4500.00 AS Decimal(18, 2)), CAST(4500.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1004, 2, 1002, 3, N'Bulaşık Makinesi', CAST(5.00 AS Decimal(18, 2)), CAST(4500.00 AS Decimal(18, 2)), CAST(4500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1005, 1, 1002, 4, N'Çamaşır Suyu', CAST(100.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Urunlers] ([UrunID], [KategoriID], [MarkaID], [TedarikciID], [UrunAdi], [Miktar], [AlisFiyati], [SatisFiyati], [Aktif]) VALUES (1006, 1, 1002, 2, N'Telefon', CAST(500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Urunlers] OFF
GO
ALTER TABLE [dbo].[BorcDetays] ADD  CONSTRAINT [DF_BorcDetay_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Kategorilers] ADD  CONSTRAINT [DF_Kategoriler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Markalars] ADD  CONSTRAINT [DF_Markalar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Musteris] ADD  CONSTRAINT [DF_Musteri_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Sepets] ADD  CONSTRAINT [DF_Sepets_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Tedarikcilers] ADD  CONSTRAINT [DF_Tedarikciler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[BorcDetays]  WITH CHECK ADD  CONSTRAINT [FK_BorcDetays_Musteris] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteris] ([MusteriID])
GO
ALTER TABLE [dbo].[BorcDetays] CHECK CONSTRAINT [FK_BorcDetays_Musteris]
GO
ALTER TABLE [dbo].[Markalars]  WITH CHECK ADD  CONSTRAINT [FK_Markalars_Kategorilers] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategorilers] ([KategoriID])
GO
ALTER TABLE [dbo].[Markalars] CHECK CONSTRAINT [FK_Markalars_Kategorilers]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteris] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteris] ([MusteriID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteris]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Urunlers] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunlers] ([UrunID])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Urunlers]
GO
ALTER TABLE [dbo].[Sepets]  WITH CHECK ADD  CONSTRAINT [FK_Sepets_Urunlers] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunlers] ([UrunID])
GO
ALTER TABLE [dbo].[Sepets] CHECK CONSTRAINT [FK_Sepets_Urunlers]
GO
ALTER TABLE [dbo].[Urunlers]  WITH CHECK ADD  CONSTRAINT [FK_Urunlers_Kategorilers] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategorilers] ([KategoriID])
GO
ALTER TABLE [dbo].[Urunlers] CHECK CONSTRAINT [FK_Urunlers_Kategorilers]
GO
ALTER TABLE [dbo].[Urunlers]  WITH CHECK ADD  CONSTRAINT [FK_Urunlers_Markalars] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Markalars] ([MarkaID])
GO
ALTER TABLE [dbo].[Urunlers] CHECK CONSTRAINT [FK_Urunlers_Markalars]
GO
ALTER TABLE [dbo].[Urunlers]  WITH CHECK ADD  CONSTRAINT [FK_Urunlers_Tedarikcilers] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikcilers] ([TedarikciID])
GO
ALTER TABLE [dbo].[Urunlers] CHECK CONSTRAINT [FK_Urunlers_Tedarikcilers]
GO
/****** Object:  StoredProcedure [dbo].[prc_BorcDetays_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_BorcDetays_Delete]
@BorcDetayID int
as
Delete from BorcDetays where BorcDetayID=@BorcDetayID
GO
/****** Object:  StoredProcedure [dbo].[prc_BorcDetays_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_BorcDetays_Insert]
@MusteriID int,
@Borc money,
@Tarih datetime,
@OdemeTarihi datetime,
@Aktif bit
as
insert BorcDetays values  (@MusteriID,@Borc,@Tarih,@OdemeTarihi, @Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_BorcDetays_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_BorcDetays_Select]
as
select bd.*,m.Ad as MusteriAdi from BorcDetays bd
left join Musteris m on bd.MusteriID=m.MusteriID
where bd.Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_BorcDetays_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[prc_BorcDetays_Update]
@BorcDetayID int,
@MusteriID int,
@Borc money,
@Tarih datetime,
@OdemeTarihi datetime,
@Aktif bit
as
Update BorcDetays set MusteriID=@MusteriID,Borc=@Borc,Tarih=@Tarih,OdemeTarihi=@OdemeTarihi, Aktif=@Aktif
where BorcDetayID=@BorcDetayID
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategorilers_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategorilers_Ara]
@aramaSozcugu nvarchar(50)
as
select *  from Kategorilers where KategoriAdi like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategorilers_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategorilers_Delete]
@KategoriID int
as
Delete from Kategorilers where KategoriID=@KategoriID
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategorilers_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategorilers_Insert]
@KategoriAdi nvarchar(50),
@Aktif bit
as
insert Kategorilers values  (@KategoriAdi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategorilers_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Kategorilers_Select]
as
select * from Kategorilers where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategorilers_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategorilers_Update]
@KategoriID int,
@KategoriAdi nvarchar(50),
@Aktif bit
as
Update Kategorilers set KategoriAdi=@KategoriAdi, Aktif=@Aktif
where KategoriID=@KategoriID
GO
/****** Object:  StoredProcedure [dbo].[prc_Markalars_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Markalars_Ara]
@aramaSozcugu nvarchar(50)
as
select *  from Markalars where MarkaAdi like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Markalars_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Markalars_Delete]
@MarkaID int
as
Delete from Markalars where MarkaID=@MarkaID
GO
/****** Object:  StoredProcedure [dbo].[prc_Markalars_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Markalars_Insert]
@MarkaAdi nvarchar(50),
@KategoriID int,
@Aktif bit
as
insert Markalars values  (@MarkaAdi,@KategoriID,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Markalars_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Markalars_Select]
as
select m.*,k.KategoriAdi from Markalars m
left join Kategorilers k on m.KategoriID=k.KategoriID
where m.Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Markalars_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Markalars_Update]
@MarkaID int,
@MarkaAdi nvarchar(50),
@KategoriID int,
@Aktif bit
as
Update Markalars set MarkaAdi=@MarkaAdi,KategoriID=@KategoriID, Aktif=@Aktif
where MarkaID=@MarkaID
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteris_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Musteris_Ara]
@aramaSozcugu nvarchar(50)
as
select *  from Musteris where Ad like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteris_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Musteris_Delete]
@MusteriID int
as
Delete from Musteris where MusteriID=@MusteriID
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteris_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Musteris_Insert]
@Ad nvarchar(50),
@Soyad nvarchar(50),
@TelNo char(10),
@Adres nvarchar(500),
@Aktif bit
as
insert Musteris values  (@Ad,@Soyad,@TelNo,@Adres,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteris_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Musteris_Select]
as
select * from Musteris where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteris_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Musteris_Update]
@MusteriID int,
@Ad nvarchar(50),
@Soyad nvarchar(50),
@TelNo char(10),
@Adres nvarchar(500),
@Aktif bit
as
Update Musteris set Ad=@Ad,Soyad=@Soyad,TelNo=@TelNo,Adres=@Adres, Aktif=@Aktif
where MusteriID=@MusteriID
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_Ara]
@aramaSozcugu nvarchar(50)
as
select s.*,u.UrunAdi, m.Ad as MusteriAdi from Satis s
left join Urunlers u on s.UrunID=u.UrunID
left join Musteris m on s.MusteriID=m.MusteriID
where s.Aktif=1 and m.Ad like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Satis_Delete]
@SatisID int
as
Delete from Satis where SatisID=@SatisID
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Satis_Insert]
@UrunID int,
@MusteriID int,
@Miktar decimal,
@ToplamFiyat money,
@Tarih datetime,
@Aktif bit
as
insert Satis values  (@UrunID,@MusteriID,@Miktar,@ToplamFiyat,@Tarih,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_Select]
as
select s.*,u.UrunAdi, m.Ad as MusteriAdi from Satis s
left join Urunlers u on s.UrunID=u.UrunID
left join Musteris m on s.MusteriID=m.MusteriID
where s.Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Satis_Update]
@SatisID int,
@UrunID int,
@MusteriID int,
@Miktar decimal,
@ToplamFiyat money,
@Tarih datetime,
@Aktif bit
as
Update Satis set UrunID=@UrunID,MusteriID=@MusteriID,Miktar=@Miktar,ToplamFiyat=@ToplamFiyat,Tarih=@Tarih, Aktif=@Aktif
where SatisID=@SatisID
GO
/****** Object:  StoredProcedure [dbo].[prc_Sepets_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Sepets_Delete]
@SepetID int
as
Delete from Sepets where SepetID=@SepetID
GO
/****** Object:  StoredProcedure [dbo].[prc_Sepets_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Sepets_Insert]
@UrunID int,
@Miktar decimal,
@ToplamFiyat money,
@Tarih datetime,
@Aktif bit
as
insert Sepets values  (@UrunID,@Miktar,@ToplamFiyat,@Tarih,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Sepets_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Sepets_Select]
as
select s.*,u.UrunAdi from Sepets s
left join Urunlers u on s.UrunID=u.UrunID
where s.Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Sepets_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Sepets_Update]
@SepetID int,
@UrunID int,
@Miktar decimal,
@ToplamFiyat money,
@Tarih datetime,
@Aktif bit
as
Update Sepets set UrunID=@UrunID,Miktar=@Miktar,ToplamFiyat=@ToplamFiyat,Tarih=@Tarih, Aktif=@Aktif
where SepetID=@SepetID
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikcilers_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikcilers_Ara]
@aramaSozcugu nvarchar(50)
as
select *  from Tedarikcilers where TedarikciAdi like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikcilers_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikcilers_Delete]
@TedarikciID int
as
Delete from Tedarikcilers where TedarikciID=@TedarikciID
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikcilers_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Tedarikcilers_Insert]
@TedarikciAdi nvarchar(50),
@TedarikciSoyadi nvarchar(50),
@TelNo nchar(10),
@Adres nvarchar(500),
@Mail nvarchar(50),
@Aktif bit
as
insert Tedarikcilers(TedarikciAdi,TedarikciSoyadi,TelNo,Adres,Mail,Aktif) 
values  (@TedarikciAdi,@TedarikciSoyadi,@TelNo,@Adres,@Mail,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikcilers_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Tedarikcilers_Select]
as
select * from Tedarikcilers where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikcilers_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikcilers_Update]
@TedarikciID int,
@TedarikciAdi nvarchar(50),
@TedarikciSoyadi nvarchar(50),
@TelNo nchar(10),
@Adres nvarchar(500),
@Mail nvarchar(50),
@Aktif bit
as
Update Tedarikcilers set TedarikciAdi=@TedarikciAdi,TedarikciSoyadi=@TedarikciSoyadi,
TelNo=@TelNo, Adres=@Adres, Mail=@Mail, Aktif=@Aktif
where TedarikciID=@TedarikciID
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunlers_Ara]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Urunlers_Ara]
@aramaSozcugu nvarchar(50)
as
select *  from Urunlers where UrunAdi like '%'+@aramaSozcugu+'%'
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunlers_Delete]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urunlers_Delete]
@UrunID int
as
Delete from Urunlers where UrunID=@UrunID
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunlers_Insert]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urunlers_Insert]
@KategoriID int,
@MarkaID int,
@TedarikciID int,
@UrunAdi nvarchar(50),
@Miktar decimal,
@AlisFiyati decimal,
@SatisFiyati decimal,
@Aktif bit
as
insert Urunlers values  (@KategoriID, @MarkaID, @TedarikciID,
@UrunAdi, @Miktar, @AlisFiyati,  @SatisFiyati, @Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunlers_Select]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Urunlers_Select]
as
select u.*,k.KategoriAdi,m.MarkaAdi,t.TedarikciAdi from Urunlers u 
left join Kategorilers k on u.KategoriID=k.KategoriID
left join Markalars m on u.MarkaID=m.MarkaID
left join Tedarikcilers t on u.TedarikciID=t.TedarikciID
where u.Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunlers_Update]    Script Date: 11.06.2020 18:15:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urunlers_Update]
@UrunID int,
@KategoriID int,
@MarkaID int,
@TedarikciID int,
@UrunAdi nvarchar(50),
@Miktar decimal,
@AlisFiyati decimal,
@SatisFiyati decimal,
@Aktif bit
as
Update Urunlers set  KategoriID=@KategoriID, MarkaID=@MarkaID, TedarikciID=@TedarikciID,
UrunAdi=@UrunAdi, Miktar=@Miktar, AlisFiyati=@AlisFiyati, SatisFiyati= @SatisFiyati, Aktif=@Aktif
where UrunID=@UrunID
GO
