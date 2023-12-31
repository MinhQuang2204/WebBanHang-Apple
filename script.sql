USE [master]
GO
/****** Object:  Database [AppleStore4]    Script Date: 28/11/2022 18:13:02 ******/
CREATE DATABASE [AppleStore4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppleStore4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LONG\MSSQL\DATA\AppleStore4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppleStore4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.LONG\MSSQL\DATA\AppleStore4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AppleStore4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppleStore4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppleStore4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppleStore4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppleStore4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppleStore4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppleStore4] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppleStore4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppleStore4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppleStore4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppleStore4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppleStore4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppleStore4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppleStore4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppleStore4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppleStore4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppleStore4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AppleStore4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppleStore4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppleStore4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppleStore4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppleStore4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppleStore4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppleStore4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppleStore4] SET RECOVERY FULL 
GO
ALTER DATABASE [AppleStore4] SET  MULTI_USER 
GO
ALTER DATABASE [AppleStore4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppleStore4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppleStore4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppleStore4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppleStore4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppleStore4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AppleStore4', N'ON'
GO
ALTER DATABASE [AppleStore4] SET QUERY_STORE = OFF
GO
USE [AppleStore4]
GO
/****** Object:  Table [dbo].[AnhSanPham]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSanPham](
	[MaAnhSP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[Anh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnhSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBV] [int] IDENTITY(1,1) NOT NULL,
	[TieuDeBV] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](4000) NULL,
	[Anh] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[MaB] [int] IDENTITY(1,1) NOT NULL,
	[TieuDeB] [nvarchar](100) NULL,
	[Anh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NULL,
	[TenDM] [nvarchar](50) NULL,
	[isDeleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaGH] [int] NULL,
	[TongTien] [int] NULL,
	[ThoiGian] [date] NULL,
	[MaTrangThai] [int] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[NgayNhanHang] [date] NULL,
	[PhuongThucThanhToan] [int] NULL,
	[TenNguoiNhan] [nvarchar](100) NULL,
	[SoDienThoai] [nchar](10) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK__DonHang__272586613E74F270] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[TenTK] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MK] [nvarchar](100) NULL,
	[NNMK] [nvarchar](100) NULL,
	[IsVerify] [int] NULL,
	[IsUser] [int] NULL,
	[IsAdmin] [int] NULL,
	[IsShiper] [int] NULL,
 CONSTRAINT [PK__KhachHan__2725CF1EE5CD86E5] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NULL,
	[TenSP] [nvarchar](100) NULL,
	[MoTa] [nvarchar](4000) NULL,
	[GiaGoc] [int] NULL,
	[GiaBanThuong] [int] NULL,
	[GiaKhuyenMai] [int] NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](100) NULL,
	[MoTaNgan] [nvarchar](4000) NULL,
	[isDeleted] [int] NULL,
	[SoLuongDaBan] [int] NULL,
 CONSTRAINT [PK__SanPham__2725081C41C3F363] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 28/11/2022 18:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnhSanPham] ON 

INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (1, 1, N'asset/img/images/ipad/pro2022/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (2, 2, N'asset/img/images/ipad/air2022/hong1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (3, 3, N'asset/img/images/Iphone/ip14/pro/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (4, 4, N'asset/img/images/Iphone/ip14/pro/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (5, 5, N'asset/img/images/Iphone/ip13/pro/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (6, 6, N'asset/img/images/Iphone/ip13/pro/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (7, 7, N'asset/img/images/Iphone/ip12/normal/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (8, 8, N'asset/img/images/Iphone/ip11/normal/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (9, 9, N'asset/img/images/Iphone/se2022/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (10, 10, N'asset/img/images/mac/air2022/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (11, 11, N'asset/img/images/mac/pro2022/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (12, 12, N'asset/img/images/mac/iMac/bac1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (13, 13, N'asset/img/images/phukien/op/ip12/normal/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (14, 14, N'asset/img/images/phukien/tainghe/airpods_pro_2022/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (15, 15, N'asset/img/images/phukien/daysac/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (16, 16, N'asset/img/images/phukien/banphim/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (17, 17, N'asset/img/images/phukien/chuot/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (18, 18, N'asset/img/images/watch/Ultra/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (19, 19, N'asset/img/images/watch/Series_8/thep_thep/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (20, 20, N'asset/img/images/watch/SE/nhom_caosu/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (23, 9, N'asset/img/images/Iphone/se2022/den2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (24, 9, N'asset/img/images/Iphone/se2022/den3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (25, 1, N'asset/img/images/ipad/pro2022/xam1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (27, 17, N'asset/img/images/phukien/chuot/den2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (28, 17, N'asset/img/images/phukien/chuot/den3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (29, 17, N'asset/img/images/phukien/chuot/den4.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (30, 17, N'asset/img/images/phukien/chuot/den5.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (31, 13, N'asset/img/images/phukien/op/ip12/normal/do1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (32, 2, N'asset/img/images/ipad/air2022/tim1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (33, 2, N'asset/img/images/ipad/air2022/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (34, 2, N'asset/img/images/ipad/air2022/xam1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (35, 2, N'asset/img/images/ipad/air2022/xanh1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (36, 3, N'asset/img/images/Iphone/ip14/pro/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (37, 3, N'asset/img/images/Iphone/ip14/pro/tim1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (38, 3, N'asset/img/images/Iphone/ip14/pro/vang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (39, 4, N'asset/img/images/Iphone/ip14/pro/den1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (40, 4, N'asset/img/images/Iphone/ip14/pro/tim1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (41, 4, N'asset/img/images/Iphone/ip14/pro/vang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (42, 5, N'asset/img/images/Iphone/ip13/pro/bac2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (43, 5, N'asset/img/images/Iphone/ip13/pro/bac3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (44, 6, N'asset/img/images/Iphone/ip13/pro/bac2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (45, 6, N'asset/img/images/Iphone/ip13/pro/bac3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (46, 7, N'asset/img/images/Iphone/ip12/normal/do1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (47, 7, N'asset/img/images/Iphone/ip12/normal/luc1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (48, 7, N'asset/img/images/Iphone/ip12/normal/tim1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (49, 7, N'asset/img/images/Iphone/ip12/normal/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (50, 7, N'asset/img/images/Iphone/ip12/normal/xanh1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (51, 8, N'asset/img/images/Iphone/ip11/normal/do1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (52, 8, N'asset/img/images/Iphone/ip11/normal/luc1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (53, 8, N'asset/img/images/Iphone/ip11/normal/trang1.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (54, 10, N'asset/img/images/mac/air2022/den2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (55, 10, N'asset/img/images/mac/air2022/den3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (56, 11, N'asset/img/images/mac/pro2022/bac2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (57, 11, N'asset/img/images/mac/pro2022/bac3.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (58, 12, N'asset/img/images/mac/iMac/bac2.webp')
INSERT [dbo].[AnhSanPham] ([MaAnhSP], [MaSP], [Anh]) VALUES (59, 12, N'asset/img/images/mac/iMac/bac3.webp')
SET IDENTITY_INSERT [dbo].[AnhSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([MaBV], [TieuDeBV], [NoiDung], [Anh], [NgayTao], [NgayCapNhat]) VALUES (1, N'5 điều người dùng cần biết về iPhone 14 Plus', N'<p dir="ltr"><strong><em><span style="box-sizing: inherit;">iPhone 14</span><span style="box-sizing: inherit;"> Plus</span></em>&nbsp;l&agrave; chiếc iPhone mới nhất của Apple c&ugrave;ng với &zwnj;iPhone 14&zwnj; ti&ecirc;u chuẩn, m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn hơn, m&aacute;y ảnh được cải thiện, n&acirc;ng cấp hiệu suất v&agrave; nhiều hơn thế nữa. Được c&ocirc;ng bố v&agrave;o th&aacute;ng trước, &zwnj;iPhone 14&zwnj; Plus ch&iacute;nh thức đến tay kh&aacute;ch h&agrave;ng v&agrave;o thứ S&aacute;u, ng&agrave;y 7/10.</strong></p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">Trước khi &zwnj;iPhone&zwnj; mới dự kiến ​​bắt đầu đến tay kh&aacute;ch h&agrave;ng Việt v&agrave;o ng&agrave;y 14/10, h&atilde;y c&ugrave;ng l&agrave;m nổi bật một số th&ocirc;ng tin v&agrave; mẩu tin c&oacute; thể &iacute;t được biết đến của &zwnj;iPhone 14&zwnj; Plus.&nbsp;</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img style="width: 800px;" src="https://fptshop.com.vn/uploads/images/tin-tuc/150399/Originals/f1662572972.jpg" alt="" data-pagespeed-url-hash="2063711275"></p>
<h2 dir="ltr">&nbsp;</h2>
<h2 dir="ltr"><strong>Pin l&acirc;u hơn</strong></h2>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">&zwnj;IPhone 14&zwnj; Plus l&agrave; &zwnj;iPhone&zwnj; &ldquo;gi&aacute; rẻ&rdquo; đầu ti&ecirc;n c&oacute; m&agrave;n h&igrave;nh 6,7 inch, trước đ&acirc;y chỉ d&agrave;nh cho c&aacute;c mẫu &zwnj;iPhone&zwnj; cao cấp nhất. Với m&agrave;n h&igrave;nh thiếu t&iacute;nh năng Pro như ProMotion đổi lại c&oacute; nhiều kh&ocirc;ng gian b&ecirc;n trong hơn để ph&acirc;n bổ cho pin, &zwnj;&zwnj;iPhone 14&zwnj;&zwnj; Plus c&oacute; tuổi thọ pin l&acirc;u nhất so với mọi &zwnj;iPhone&zwnj; kh&ocirc;ng phải Pro.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img style="width: 800px;" src="https://fptshop.com.vn/uploads/images/tin-tuc/150399/Originals/iphone-14-a15-gaming.jpg" alt="" data-pagespeed-url-hash="2520526743"></p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">Theo Apple, người d&ugrave;ng c&oacute; thể mong đợi l&ecirc;n đến 26 giờ ph&aacute;t video tr&ecirc;n &zwnj;iPhone 14&zwnj; Plus v&agrave; l&ecirc;n đến 100 giờ ph&aacute;t lại &acirc;m thanh. Giống như tất cả c&aacute;c mẫu &zwnj;iPhone 14&zwnj;, &zwnj;iPhone 14&zwnj; Plus c&oacute; hỗ trợ MagSafe, c&oacute; thể sạc thiết bị l&ecirc;n đến 50% dung lượng trong 30 ph&uacute;t.</p>
<p dir="ltr">&nbsp;</p>
<h2 dir="ltr"><strong>M&aacute;y ảnh tương tự như iPhone 14</strong></h2>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">&zwnj;iPhone 14&zwnj; v&agrave; &zwnj;iPhone 14&zwnj; Plus chia sẻ c&aacute;c t&iacute;nh năng v&agrave; th&ocirc;ng số kỹ thuật m&aacute;y ảnh giống nhau, c&oacute; nghĩa l&agrave; kh&aacute;ch h&agrave;ng lựa chọn giữa hai thiết bị kh&ocirc;ng cần phải c&acirc;n nhắc xem thiết bị n&agrave;o c&oacute; khả năng chụp ảnh tốt hơn.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img style="width: 800px;" src="https://fptshop.com.vn/uploads/images/tin-tuc/150399/Originals/iphone-14-front-facing-camera-ad.jpg" alt="" data-pagespeed-url-hash="400664904"></p>', N'asset/img/images/baiviet/f1662572972.jpg', CAST(N'2022-11-27' AS Date), NULL)
INSERT [dbo].[BaiViet] ([MaBV], [TieuDeBV], [NoiDung], [Anh], [NgayTao], [NgayCapNhat]) VALUES (2, N'iPhone 14 Pro Max vượt xa các đối thủ Android trong thử nghiệm pin', N'<p dir="ltr"><strong>D&ugrave; kh&ocirc;ng sở hữu dung lượng pin vượt trội nhưng với khả năng tối ưu tuyệt vời, bộ xử l&yacute; tiết kiệm năng lượng th&igrave;&nbsp;iPhone 14 Pro Max&nbsp;đ&atilde; thổi bay mọi đối thủ Android trong thử nghiệm pin.</strong></p>
<p dir="ltr">iPhone 14 Pro v&agrave; iPhone 14 Pro Max được so s&aacute;nh với Google Pixel 7, Samsung Galaxy S22 Ultra v&agrave; một số mẫu Android kh&aacute;c.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img id="iPhone 14 Pro Max" style="width: 800px;" title="iPhone 14 Pro Max" src="https://fptshop.com.vn/uploads/images/tin-tuc/150876/Originals/iphone-14-pro_overview__e2a7u9jy63ma_og.png" alt="iPhone 14 Pro Max" data-pagespeed-url-hash="3619512187"></p>
<p dir="ltr"><iframe src="https://www.youtube.com/embed/7XxUI44D9x0" width="640" height="360" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">B&agrave;i kiểm tra pin được thực hiện bởi PhoneArena. Thử nghiệm đầu ti&ecirc;n l&agrave; giả lập duyệt web, kết quả như sau:</p>
<ul dir="ltr" style="list-style-type: none;">
<li>iPhone 14 Pro&zwnj; Max: 19 giờ 5 ph&uacute;t</li>
<li>iPhone 14 Pro&zwnj;: 16 giờ 18 ph&uacute;t</li>
<li>Pixel 7 Pro: 14 giờ 19 ph&uacute;t</li>
<li>Pixel 7: 13 giờ 56 ph&uacute;t</li>
<li>Galaxy S22 Ultra: 13 giờ 17 ph&uacute;t</li>
<li>Pixel 6 Pro: 13 giờ 13 ph&uacute;t</li>
</ul>
<p dir="ltr">Phần thứ hai của thử nghiệm bao gồm mỗi điện thoại ph&aacute;t lại c&ugrave;ng một video YouTube cho đến khi ch&uacute;ng hết pin. Kết quả như sau:</p>
<ul dir="ltr" style="list-style-type: none;">
<li>iPhone 14 Pro&zwnj; Max: 11 giờ 0 ph&uacute;t</li>
<li>Pixel 7 Pro: 9 giờ 39 ph&uacute;t</li>
<li>iPhone 14 Pro&zwnj;: 9 giờ 14 ph&uacute;t</li>
<li>Pixel 7: 9 giờ 13 ph&uacute;t</li>
<li>Pixel 6 Pro: 9 giờ 10 ph&uacute;t</li>
<li>Galaxy S22 Ultra: 7 giờ 27 ph&uacute;t</li>
</ul>
<p dir="ltr">Về dung lượng pin, cả iPhone 14 Pro v&agrave; iPhone 14 Pro Max đều kh&aacute; khi&ecirc;m tốn khi so với c&aacute;c mẫu điện thoại Android:</p>
<ul dir="ltr" style="list-style-type: none;">
<li>iPhone 14 Pro&zwnj; Max: 4323mAh</li>
<li>&zwnj;iPhone 14 Pro&zwnj;: 3200mAh</li>
<li>Galaxy S22 Ultra: 5000mAh</li>
<li>Pixel 7 Pro: 5000mAh</li>
<li>Pixel 7: 4355mAh</li>
<li>Pixel 6 Pro: 5000mAh</li>
</ul>', N'asset/img/images/baiviet/iphone-14-pro_overview__e2a7u9jy63ma_og.png', CAST(N'2022-11-27' AS Date), CAST(N'2022-11-27' AS Date))
INSERT [dbo].[BaiViet] ([MaBV], [TieuDeBV], [NoiDung], [Anh], [NgayTao], [NgayCapNhat]) VALUES (3, N'iPad Gen 10: Nhiều màu sắc, USB-C, màn hình lớn hơn, viền mỏng, vẫn dùng Apple Pencil 1', N'<p dir="ltr"><strong>D&ograve;ng iPad gi&aacute; rẻ nhất của Apple cuối c&ugrave;ng cũng đ&atilde; chuyển sang thiết kế mới, nhiều m&agrave;u sắc hơn, chuyển sang USB-C đồng thời được n&acirc;ng cấp bộ xử l&yacute; l&ecirc;n Apple A14 Bionic mạnh mẽ hơn.</strong></p>
<p dir="ltr"><a id="iPad Gen 10" title="iPad Gen 10" href="https://fstudiobyfpt.com.vn/ipad/ipad-gen-10-2022-10-9-inch-wifi?dung-luong=64gb" type="iPad Gen 10">iPad Gen 10</a>&nbsp;đ&aacute;nh dấu sự chấm dứt của cổng Lightning tr&ecirc;n iPad v&agrave; c&oacute; thể l&agrave; mở đường cho việc t&iacute;ch hợp cổng USB-C l&ecirc;n iPhone trong tương lai. V&agrave; dưới đ&acirc;y l&agrave; tổng hợp tất cả những th&ocirc;ng tin bạn cần biết nếu c&oacute; &yacute; định tậu một chiếc iPad Gen 10.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img id="iPad Gen 10 01" style="width: 800px;" title="iPad Gen 10 01" src="https://fptshop.com.vn/uploads/images/tin-tuc/150875/Originals/Apple-iPad-10th-gen-hero-221018.jpg" alt="iPad Gen 10 01" data-pagespeed-url-hash="1311660165"></p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><strong>Thiết kế mới, m&agrave;n h&igrave;nh lớn hơn</strong></p>
<p dir="ltr">iPad Gen 10 cuối c&ugrave;ng cũng đ&atilde; loại bỏ n&uacute;t Home với Touch ID ở mặt trước, cảm biến v&acirc;n tay đ&atilde; được chuyển sang n&uacute;t nguồn. Thiết kế của to&agrave;n bộ d&ograve;ng iPad hiện tại đ&atilde; được đồng nhất với viền mỏng đều tất cả c&aacute;c cạnh, khung m&aacute;y vu&ocirc;ng vức v&agrave; hiện đại hơn.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img id="iPad Gen 10 02" style="width: 800px;" title="iPad Gen 10 02" src="https://fptshop.com.vn/uploads/images/tin-tuc/150875/Originals/Apple-iPad-10th-gen-blue-2up-221018.jpg" alt="iPad Gen 10 02" data-pagespeed-url-hash="1335607001"></p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr">Với viền m&agrave;n h&igrave;nh mỏng hơn, iPad Gen 10 cũng c&oacute; m&agrave;n h&igrave;nh 10.9 inch tương tự như iPad Air 4 v&agrave; Air 5. M&agrave;n h&igrave;nh của iPad Gen 10 c&oacute; độ ph&acirc;n giải 2360x1640 pixel, độ s&aacute;ng tối đa 500 nits, hỗ trợ True Tone cho chất lượng hiển thị tốt, đ&aacute;p ứng mọi nhu cầu giải tr&iacute;, học tập v&agrave; thậm ch&iacute; l&agrave; cả l&agrave;m việc.</p>
<p dir="ltr">&nbsp;</p>
<p dir="ltr"><img id="iPad Gen 10 03" style="width: 800px;" title="iPad Gen 10 03" src="https://fptshop.com.vn/uploads/images/tin-tuc/150875/Originals/Apple-iPad-10th-gen-Liquid-Retina-display-221018.jpg" alt="iPad Gen 10 03" data-pagespeed-url-hash="3879430696"></p>', N'asset/img/images/baiviet/Apple-iPad-10th-gen-hero-221018.jpg', CAST(N'2022-11-27' AS Date), NULL)
INSERT [dbo].[BaiViet] ([MaBV], [TieuDeBV], [NoiDung], [Anh], [NgayTao], [NgayCapNhat]) VALUES (4, N'Apple khóa sync iOS 16.0.2 sau khi phát hành iOS 16.0.3', N'<p><strong>Như thường lệ, Apple đ&atilde; kh&oacute;a sync iOS 16.0.2, người d&ugrave;ng kh&ocirc;ng thể hạ cấp sau khi cập nhật&nbsp;<a id="iPhone" title="iPhone" href="https://fstudiobyfpt.com.vn/iphone" type="iPhone">iPhone</a>&nbsp;của m&igrave;nh l&ecirc;n iOS 16.0.3.</strong></p>
<p>Apple thường xuy&ecirc;n kh&oacute;a sync c&aacute;c bản ph&aacute;t h&agrave;nh iOS cũ hơn để ngăn người d&ugrave;ng hạ cấp xuống phi&ecirc;n bản phần mềm trước đ&oacute; để tr&aacute;nh c&aacute;c rủi ro về bảo mật. iOS 16.0.2 được ph&aacute;t h&agrave;nh v&agrave;o ng&agrave;y 22 th&aacute;ng 9 v&agrave; bao gồm một số bản sửa lỗi v&agrave; cập nhật bảo mật. Bản cập nhật đ&atilde; giải quyết một số vấn đề ảnh hưởng đến c&aacute;c mẫu iPhone 14 Pro, bao gồm camera sau rung khi chụp bằng một số ứng dụng của b&ecirc;n thứ ba v&agrave; m&agrave;n h&igrave;nh hiển thị ho&agrave;n to&agrave;n đen trong qu&aacute; tr&igrave;nh thiết lập thiết bị. iOS 16.0.2 cũng đ&atilde; sửa một lỗi khiến một số người d&ugrave;ng phải đối mặt với lời nhắc cấp quyền sao ch&eacute;p v&agrave; d&aacute;n.</p>
<p>&nbsp;</p>
<p><img id="ios" style="width: 800px;" title="ios" src="https://fptshop.com.vn/uploads/images/tin-tuc/150807/Originals/iOS-16_0_2-Beta-Feature.jpg" alt="ios" data-pagespeed-url-hash="3779780401"></p>
<p>&nbsp;</p>
<p>iOS 16.0.3 vừa được ph&aacute;t h&agrave;nh c&aacute;ch đ&acirc;y khoảng 1 tuần tiếp tục sửa lỗi cũng như tăng cường khả năng bảo mật d&agrave;nh cho tất cả c&aacute;c thiết bị iPhone hỗ trợ iOS 16.</p>
<p>Bản cập nhật iOS tiếp theo c&oacute; thể l&agrave; iOS 16.1 dự kiến ​​sẽ được ph&aacute;t h&agrave;nh v&agrave;o tuần tới c&ugrave;ng với iPadOS 16.1 v&agrave; macOS Ventura. iOS 16.1 sẽ mang đến nhiều thay đổi v&agrave; t&iacute;nh năng mới hơn cho người d&ugrave;ng bao gồm hiển thị phần trăm pin cho c&aacute;c mẫu iPhone "tai thỏ" chưa được hỗ trợ trong iOS 16.</p>
<p>&nbsp;</p>', N'asset/img/images/baiviet/iOS-16_0_2-Beta-Feature.jpg', CAST(N'2022-11-27' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([MaB], [TieuDeB], [Anh]) VALUES (1, N'Chính thức nhận đặt trước AirPods Pro 2', N'asset/img/images/banner/638025766944415689_z3836605558001_ce485c09a9f726a26684895670d0c279.jpg')
INSERT [dbo].[Banner] ([MaB], [TieuDeB], [Anh]) VALUES (3, N'Apple Watch chính thức mở bán', N'asset/img/images/banner/638025767322802345_z3836605566486_e7c58a90ff09cd8c90267afd7b33460e.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (1, 18, 1, 25990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (1, 20, 2, 17580000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (2, 3, 1, 36990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (3, 2, 1, 19990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (4, 10, 1, 39990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (5, 17, 1, 2890000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (6, 4, 1, 39990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (7, 14, 1, 7990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (8, 2, 1, 19990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (9, 16, 1, 4799000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (10, 19, 1, 25990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (11, 4, 1, 39990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (12, 7, 1, 19499000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (13, 12, 6, 236994000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (14, 11, 1, 39490000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (15, 4, 2, 79980000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (16, 20, 2, 17580000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (17, 15, 1, 1590000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (18, 16, 2, 9598000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (19, 13, 1, 1990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (21, 11, 3, 118470000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (22, 16, 1, 4799000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (23, 20, 1, 8790000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (24, 7, 1, 19499000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (24, 15, 1, 1590000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (25, 17, 1, 2890000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (26, 17, 5, 14450000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (28, 6, 4, 107960000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (29, 3, 1, 36990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (30, 4, 1, 39990000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (32, 3, 2, 73980000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (33, 11, 1, 39490000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (34, 14, 1, 7990000)
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (1, 1, N'Iphone 14', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (2, 1, N'Iphone 13', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (3, 1, N'Iphone 12', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (4, 1, N'Iphone 11', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (5, 1, N'Iphone SE', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (6, 2, N'IPad Pro', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (7, 2, N'IPad Air', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (8, 2, N'IPad mini', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (9, 2, N'IPad Gen', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (10, 3, N'Series Ultra', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (11, 3, N'Series 8', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (12, 3, N'Series 7', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (13, 3, N'Series SE', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (14, 4, N'MacBook Air', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (15, 4, N'MacBook Pro', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (16, 4, N'IMac', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (17, 5, N'Ốp lưng/Bao da', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (18, 5, N'Tai nghe', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (19, 5, N'Cáp', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (20, 5, N'Chuột/Bàn phím/Bút', 0)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (1, 1, 4, 43570000, CAST(N'2019-11-27' AS Date), 4, N'Số 1 Võ Văn Ngân', CAST(N'2019-11-27' AS Date), 0, N'Nguyễn Huỳnh Khoa', N'0869980090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (2, 1, 4, 36990000, CAST(N'2022-11-27' AS Date), 4, N'Số 1 Võ Văn Ngân', CAST(N'2022-11-27' AS Date), 0, N'Nguyễn Huỳnh Khoa', N'0869980090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (3, 2, 4, 19990000, CAST(N'2020-01-01' AS Date), 4, N'Bình Thuận Bình Sơn Quảng Ngãi', CAST(N'2020-01-01' AS Date), 0, N'khoa nguyễn', N'0869950090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (4, 2, 4, 39990000, CAST(N'2022-11-27' AS Date), 4, N'Bình Thuận Bình Sơn Quảng Ngãi', CAST(N'2022-11-28' AS Date), 0, N'khoa nguyễn', N'0869950090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (5, 5, 4, 2890000, CAST(N'2022-01-02' AS Date), 4, N'Tiền Giang', CAST(N'2022-01-02' AS Date), 0, N'Lê Đức Long', N'0585858714', N'lelong27022002@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (6, 6, 4, 39990000, CAST(N'2022-03-27' AS Date), 4, N'484 LÊ VĂN VIỆT TĂNG NHƠN PHÚ A QUẬN 9 THÀNH PHỐ HỒ CHÍ MINH', CAST(N'2022-03-27' AS Date), 0, N'Nguyễn Văn A', N'0585858744', N'heku04780@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (7, 7, 4, 7990000, CAST(N'2022-06-27' AS Date), 4, N'27 Đường C2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh', CAST(N'2022-06-27' AS Date), 0, N'Nguyễn Văn B', N'0585858414', N'le@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (8, 8, 4, 19990000, CAST(N'2022-09-27' AS Date), 4, N'Lê Lợi, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', CAST(N'2022-09-27' AS Date), 0, N'Nguyễn Văn C', N'0585854714', N'c@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (9, 9, 4, 4799000, CAST(N'2022-10-27' AS Date), 4, N'125 Đồng Văn Cống, Phường Thạnh Mỹ Lợi, Quận 2, Thành phố Hồ Chí Minh 700000', CAST(N'2022-10-27' AS Date), 0, N'Nguyễn Văn D', N'0585848714', N'D@student.hcmute.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (10, 10, 4, 25990000, CAST(N'2020-11-27' AS Date), 4, N'30 Nguyễn Thị Thập, Bình Thuận, Quận 7, Thành phố Hồ Chí Minh', CAST(N'2020-11-27' AS Date), 0, N'Nguyễn Văn E', N'0545858714', N'E@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (11, 11, 4, 39990000, CAST(N'2020-05-27' AS Date), 4, N'180 Đ. Tam Châu, Bình Chiểu, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', CAST(N'2020-05-27' AS Date), 0, N'Trần Thị C', N'0999999988', N'ccc@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (12, 12, 4, 19499000, CAST(N'2022-04-27' AS Date), 4, N'2 Đ. Lý Tế Xuyên, Linh Đông, Thủ Đức, Thành phố Hồ Chí Minh 700000, Việt Nam', CAST(N'2022-04-27' AS Date), 0, N'Trần Thị R', N'0999999999', N'R@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (13, 13, 4, 236994000, CAST(N'2022-11-27' AS Date), 4, N'179A Kha Vạn Cân, Linh Tây, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', CAST(N'2022-11-28' AS Date), 0, N'Trần Công Công', N'0999999499', N'Cong@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (14, 5, 4, 39490000, CAST(N'2022-02-28' AS Date), 4, N'Tiền Giang', CAST(N'2022-02-28' AS Date), 0, N'Lê Đức Long', N'0585858714', N'lelong27022002@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (15, 15, 4, 79980000, CAST(N'2022-11-28' AS Date), 4, N'Đường J1, An Bình, Dĩ An, Bình Dương, Việt Nam', CAST(N'2022-11-28' AS Date), 0, N'Trần Văn D', N'0555858715', N'VanD@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (16, 16, 4, 17580000, CAST(N'2022-05-28' AS Date), 4, N'Tiền Giang', CAST(N'2022-05-28' AS Date), 0, N'Lê Đức Long', N'0535858714', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (17, 17, 4, 1590000, CAST(N'2022-02-28' AS Date), 4, N'60 Đ. Bình Chiểu, Bình Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', CAST(N'2022-02-28' AS Date), 0, N'Nguyễn Huỳnh D', N'0999989999', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (18, 18, 4, 9598000, CAST(N'2022-03-28' AS Date), 4, N'Bình Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', CAST(N'2022-03-28' AS Date), 0, N'Trần Thị V', N'0994995999', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (19, 19, 4, 1990000, CAST(N'2022-11-28' AS Date), 3, N'Tam Bình, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, 0, N'Lê Đức T', N'0999399988', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (21, 21, 4, 118470000, CAST(N'2022-11-28' AS Date), 3, N'14 Khu Phố Nhị Đồng, Dĩ An, Bình Dương, Việt Nam', NULL, 0, N'Lê O', N'0885488888', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (22, 22, 4, 4799000, CAST(N'2022-11-28' AS Date), 3, N'Tam Phú, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, 0, N'Trần I', N'0999999444', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (23, 23, 4, 8790000, CAST(N'2022-11-28' AS Date), 3, N'465 Đ. Nguyễn Tri Phương, An Bình, Dĩ An', NULL, 0, N'Sơn Tùng ', N'0888883488', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (24, 1, 4, 21089000, CAST(N'2022-11-28' AS Date), 4, N'Đường J1, An Bình, Dĩ An, Bình Dương, Việt Nam', CAST(N'2022-11-28' AS Date), 0, N'Nguyễn Huỳnh Khoa', N'0869980090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (25, 1, NULL, 2890000, CAST(N'2022-11-28' AS Date), 2, N'Đường J1, An Bình, Dĩ An, Bình Dương, Việt Nam', NULL, 0, N'Nguyễn Huỳnh Khoa', N'0869980090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (26, 2, NULL, 14450000, CAST(N'2022-11-28' AS Date), 2, N'Bình Thuận Bình Sơn Quảng Ngãi', NULL, 0, N'khoa nguyễn', N'0869950090', N'20110662@student.hcmute.edu.vn')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (28, 25, NULL, 107960000, CAST(N'2022-11-28' AS Date), 2, N'315 Đ. Nguyễn Tri Phương, Dĩ An, Thành Phố, Bình Dương, Việt Nam', NULL, 0, N'Đông Nhi', N'0949999949', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (29, 26, NULL, 36990000, CAST(N'2022-11-28' AS Date), 2, N'RVF8+X6V, Đường Số 5, Long Phước, Quận 9, Thành phố Hồ Chí Minh, Việt Nam', NULL, 0, N'Hoài Linh', N'0883884888', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (30, 27, NULL, 39990000, CAST(N'2022-11-28' AS Date), 1, N'324 Đ. Hoà Hưng, Phường 12, Quận 10, Thành phố Hồ Chí Minh 70000, Việt Nam', NULL, 0, N'Phương Hằng', N'0883538888', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (32, 29, NULL, 73980000, CAST(N'2022-11-28' AS Date), 1, N'Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam', NULL, 0, N'Quốc Định', N'0994959988', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (33, 30, NULL, 39490000, CAST(N'2022-11-28' AS Date), 1, N'Châu Thành Tiền Giang', NULL, 0, N'Đức Long', N'0585152715', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (34, 5, 4, 7990000, CAST(N'2022-11-28' AS Date), 4, N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', CAST(N'2022-11-28' AS Date), 1, N'Quân', N'0585858714', N'cobedt12@gmail.com')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (1, N'Nguyễn Huỳnh Khoa', N'hynhkhoa', N'20110662@student.hcmute.edu.vn', N'0869980090', NULL, N'4297f44b13955235245b2497399d7a93', N'4297f44b13955235245b2497399d7a93', 1, 1, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (2, N'khoa nguyễn', N'khoakhoa', N'20110662@student.hcmute.edu.vn', N'0869950090', N'Bình Thuận Bình Sơn Quảng Ngãi', N'e10adc3949ba59abbe56e057f20f883e', N'4297f44b13955235245b2497399d7a93', 1, 1, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (3, N'admin', N'admin', N'20110662@student.hcmute.edu.vn', N'0964824588', NULL, N'4297f44b13955235245b2497399d7a93', N'4297f44b13955235245b2497399d7a93', 1, 1, 1, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (4, N'shipper', N'shipper', N'20110662@student.hcmute.edu.vn', N'0369911366', NULL, N'4297f44b13955235245b2497399d7a93', N'4297f44b13955235245b2497399d7a93', 1, 1, 0, 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (5, N'Lê Đức Long', NULL, N'lelong27022002@gmail.com', N'0585858714', N'Tiền Giang', N'e10adc3949ba59abbe56e057f20f883e', N'e10adc3949ba59abbe56e057f20f883e', NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (6, N'Nguyễn Văn A', NULL, N'heku04780@gmail.com', N'0585858744', N'484 LÊ VĂN VIỆT TĂNG NHƠN PHÚ A QUẬN 9 THÀNH PHỐ HỒ CHÍ MINH', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (7, N'Nguyễn Văn B', NULL, N'le@gmail.com', N'0585858414', N'27 Đường C2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (8, N'Nguyễn Văn C', NULL, N'c@gmail.com', N'0585854714', N'Lê Lợi, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (9, N'Nguyễn Văn D', NULL, N'D@student.hcmute.vn', N'0585848714', N'125 Đồng Văn Cống, Phường Thạnh Mỹ Lợi, Quận 2, Thành phố Hồ Chí Minh 700000', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (10, N'Nguyễn Văn E', NULL, N'E@gmail.com', N'0545858714', N'30 Nguyễn Thị Thập, Bình Thuận, Quận 7, Thành phố Hồ Chí Minh', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (11, N'Trần Thị C', NULL, N'ccc@gmail.com', N'0999999988', N'180 Đ. Tam Châu, Bình Chiểu, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (12, N'Trần Thị R', NULL, N'R@gmail.com', N'0999999999', N'2 Đ. Lý Tế Xuyên, Linh Đông, Thủ Đức, Thành phố Hồ Chí Minh 700000, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (13, N'Trần Công Công', NULL, N'Cong@gmail.com', N'0999999499', N'179A Kha Vạn Cân, Linh Tây, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (14, N'shipper1', N'shipper', N'20110662@student.hcmute.edu.vn', N'0999889768', N'179A Kha Vạn Cân, Linh Tây, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', N'4297f44b13955235245b2497399d7a93', N'4297f44b13955235245b2497399d7a93', 1, 1, 0, 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (15, N'Trần Văn D', NULL, N'VanD@gmail.com', N'0555858715', N'Đường J1, An Bình, Dĩ An, Bình Dương, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (16, N'Lê Đức Long', NULL, N'', N'0535858714', N'Tiền Giang', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (17, N'Nguyễn Huỳnh D', NULL, N'', N'0999989999', N'60 Đ. Bình Chiểu, Bình Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (18, N'Trần Thị V', NULL, N'', N'0994995999', N'Bình Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (19, N'Lê Đức T', NULL, N'', N'0999399988', N'Tam Bình, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (20, N'Nguyễn C', NULL, N'', N'09995499969', N'26/14 Kp. Bình Đường 2, Dĩ An, Bình Dương, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (21, N'Lê O', NULL, N'', N'0885488888', N'14 Khu Phố Nhị Đồng, Dĩ An, Bình Dương, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (22, N'Trần I', NULL, N'', N'0999999444', N'Tam Phú, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (23, N'Sơn Tùng ', NULL, N'', N'0888883488', N'465 Đ. Nguyễn Tri Phương, An Bình, Dĩ An', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (24, N'Trường Giang', NULL, N'', N'09548358714', N'465 Đ. Nguyễn Tri Phương, An Bình, Dĩ An, Bình Dương', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (25, N'Đông Nhi', NULL, N'', N'0949999949', N'315 Đ. Nguyễn Tri Phương, Dĩ An, Thành Phố, Bình Dương, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (26, N'Hoài Linh', NULL, N'', N'0883884888', N'RVF8+X6V, Đường Số 5, Long Phước, Quận 9, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (27, N'Phương Hằng', NULL, N'', N'0883538888', N'324 Đ. Hoà Hưng, Phường 12, Quận 10, Thành phố Hồ Chí Minh 70000, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (28, N'Phạm Thoại', NULL, N'', N'09949995988', N'190 Hàm Tử, Phường 1, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (29, N'Quốc Định', NULL, N'', N'0994959988', N'Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (30, N'Đức Long', NULL, N'', N'0585152715', N'Châu Thành Tiền Giang', NULL, NULL, NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1, N'IPhone')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2, N'IPad')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3, N'AppleWatch')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (4, N'Mac')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (5, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (1, 6, N'iPad Pro 12.9 2022 M2 WiFi 5G 2TB', N'<p><strong>Với phi&ecirc;n bản dung lượng 2TB của iPad Pro 12.9 2022 M2, bạn sẽ giải ph&oacute;ng ho&agrave;n to&agrave;n sức mạnh khổng lồ của chip xử l&yacute; M2 c&ugrave;ng lợi thế m&agrave; từ c&aacute;c c&ocirc;ng nghệ kết nối t&acirc;n tiến như Wi-Fi 6E v&agrave; 5G. Tr&ecirc;n chiếc tablet thủ lĩnh của d&ograve;ng iPad Pro 2022, Apple đ&atilde; trang bị m&agrave;n h&igrave;nh mini-LED sắc n&eacute;t, rực rỡ sắc m&agrave;u.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Event/Pantech/ipad-pro-12_9-2022-m2-wi-fi-5g-2tb-5.jpg"></p>
<h3><strong>Lưu trữ mọi điều bạn muốn trong bộ nhớ 2TB</strong></h3>
<p>Với mức gi&aacute; cao cấp nhất trong c&aacute;c model iPad Pro 2022, phi&ecirc;n bản 2TB của iPad Pro 12.9 2022 M2 đem lại cho bạn những gi&aacute; trị trải nghiệm xứng đ&aacute;ng. Nhờ bộ nhớ trong rộng r&atilde;i, chủ nh&acirc;n chiếc tablet c&oacute; thể quay video 4K v&agrave; lưu trữ thoải m&aacute;i, đồng thời tận dụng Wi-Fi 6E v&agrave; 5G để tải về mọi tệp dữ liệu nặng, kh&ocirc;ng cần t&iacute;nh đến việc đồng bộ video, ảnh chụp l&ecirc;n c&aacute;c nền tảng đ&aacute;m m&acirc;y như khi sử dụng c&aacute;c mẫu iPad kh&aacute;c.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Event/Pantech/ipad-pro-12_9-2022-m2-wi-fi-5g-2tb-1.jpg"></p>
<h3><strong>Thăng hoa sức mạnh với chip Apple M2</strong></h3>
<p>Bộ vi xử l&yacute; M2 do đội ngũ Apple thiết kế v&agrave; sản xuất độc quyền sẽ phụ tr&aacute;ch điều phối mọi t&aacute;c vụ vận h&agrave;nh của iPad Pro 12.9 2022. Con chip đỉnh cao n&agrave;y gồm c&oacute; 8 nh&acirc;n CPU, 10 nh&acirc;n GPU, đem lại hiệu suất vận h&agrave;nh vượt trội 15% v&agrave; gia tăng hiệu năng đồ họa th&ecirc;m 35%. Ngo&agrave;i ra, nhờ cải tiến 40% nh&acirc;n Neural Engine, M2 cũng gi&uacute;p iPad Pro 12.9 2022 chạy mượt c&aacute;c ứng dụng AR phức tạp.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Event/Pantech/ipad-pro-11-2022-m2-wi-fi-5g-2.jpg"></p>
<h3><strong>Trợ thủ xuất sắc cho c&ocirc;ng việc s&aacute;ng tạo</strong></h3>
<p>Kh&ocirc;ng chỉ c&oacute; thế mạnh về c&aacute;c t&aacute;c vụ chỉnh sửa h&igrave;nh ảnh, render video, hỗ trợ lập tr&igrave;nh nhờ con chip M2 xuất sắc, iPad Pro 12.9 2022 M2 Wi-Fi 5G 2TB c&ograve;n cho thấy bản th&acirc;n l&agrave; một cỗ m&aacute;y hỗ trợ c&ocirc;ng việc s&aacute;ng tạo đ&iacute;ch thực khi cho ph&eacute;p tạo n&ecirc;n những thước phim chất lượng từ h&igrave;nh ảnh đến &acirc;m thanh nhờ hệ thống năm micro v&agrave; bốn loa ngo&agrave;i. Kh&ocirc;ng chỉ vậy, hiệu suất m&atilde; h&oacute;a, giải m&atilde; video ProRes của iPad Pro 12.9 2022 cũng hết sức đ&aacute;ng nể.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Event/Pantech/ipad-pro-12_9-2022-m2-wi-fi-5g-2tb-3.jpg"></p>', 64990000, 65990000, 65990000, 49, N'asset/img/images/ipad/pro2022/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>12.9 inch, Retina, Liquid Retina HD, 2732 x 2048 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 10.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>16 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>2 TB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple M2</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple M2</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>10 Giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iPadOS 16</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>10/2022</td>
</tr>
</tbody>
</table>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (2, 7, N'iPad Air 5 2022 10.9 inch M1 WiFi 5G 64GB', N'<p><strong>Chạm đến ngưỡng sức mạnh mới với chip M1 đỉnh cao, phi&ecirc;n bản Wi-Fi + 5G của iPad Air 5 cho thấy sự dung h&ograve;a ho&agrave;n hảo giữa th&acirc;n m&aacute;y thời trang c&ugrave;ng hiệu năng ấn tượng. Bạn sẽ t&igrave;m thấy tr&ecirc;n sản phẩm n&agrave;y những c&ocirc;ng nghệ h&agrave;ng đầu như kết nối 5G, camera selfie 12MP g&oacute;c si&ecirc;u rộng, tất cả hứa hẹn một trải nghiệm hết sức vẹn to&agrave;n.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/ipad-air-2022-1.JPG"></p>
<h3><strong>Kh&ocirc;ng gian hiển thị Liquid Retina tuyệt sắc</strong></h3>
<p>Nằm trong bộ sưu tập iPad Air hướng tới diện mạo nịnh mắt trong thiết kế tổng thể, iPad Air 5 2022 10.9 inch khoe d&aacute;ng với th&acirc;n m&aacute;y si&ecirc;u mỏng chỉ 6.1 inch. Nhờ r&uacute;t gọn c&aacute;c đường viền chạy quanh m&agrave;n h&igrave;nh, sản phẩm đảm bảo k&iacute;ch cỡ kh&ocirc;ng qu&aacute; lớn d&ugrave; c&oacute; kh&ocirc;ng gian hiển thị rộng lớn 10.9 inch. C&ocirc;ng nghệ Touch ID giờ đ&acirc;y đ&atilde; được chuyển qua ph&iacute;m nguồn đặt ở cạnh b&ecirc;n, gia tăng độ nhạy, t&iacute;nh bảo mật m&agrave; vẫn giữ nguy&ecirc;n vẻ thời trang cho thiết bị.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/ipad-air-2022-2.JPG"></p>
<h3><strong>Apple M1 đem tới bước nhảy vọt về sức mạnh</strong></h3>
<p>Trung t&acirc;m sức mạnh của iPad Air 5 2022 nằm ở chip xử l&yacute; Apple M1. Bộ vi xử l&yacute; đ&igrave;nh đ&aacute;m do đội ngũ Apple ph&aacute;t triển cho thấy hiệu suất xử l&yacute; dữ liệu vượt trội 60% so với đời chip trước. Với sự gi&uacute;p sức của M1, iPad Air 5 Wi-Fi 5G c&oacute; thể sắm vai thiết bị chơi game chuy&ecirc;n nghiệp, xử l&yacute; nhanh ch&oacute;ng c&aacute;c t&aacute;c vụ nặng như render video, chỉnh sửa ảnh v&agrave; chạy mượt mọi ứng dụng sẵn c&oacute; tr&ecirc;n App Store.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/ipad-air-2022-4.JPG"></p>
<h3><strong>C&ocirc;ng cụ chỉnh sửa ảnh h&agrave;ng đầu cho bạn</strong></h3>
<p>Nếu bạn l&agrave; một designer chuy&ecirc;n nghiệp v&agrave; c&oacute; nhu cầu t&igrave;m kiếm m&aacute;y t&iacute;nh bảng đ&aacute;p ứng được y&ecirc;u cầu c&ocirc;ng việc của m&igrave;nh th&igrave; iPad Air 5 2022 ho&agrave;n to&agrave;n ph&ugrave; hợp với kỳ vọng của bạn. Bật m&iacute; cho bạn l&agrave; &ldquo;T&aacute;o khuyết&rdquo; đ&atilde; cộng t&aacute;c c&ugrave;ng c&aacute;c doanh nghiệp lẫy lừng trong ng&agrave;nh đồ họa như Adobe để ph&aacute;t triển ứng dụng thiết kế, dựng phim sao cho ph&ugrave; hợp nhất với cấu h&igrave;nh của d&ograve;ng iPad, ph&aacute;t huy trọn vẹn sức mạnh ấn tượng m&agrave; con chip M1 vốn c&oacute;.<img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/ipad-air-2022-6.JPG"></p>', 18990000, 19990000, 19990000, 47, N'asset/img/images/ipad/air2022/hong1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>12.9 inch, Retina, Liquid Retina HD, 2732 x 2048 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 10.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>16 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>2 TB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple M2</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple M2</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>10 Giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iPadOS 16</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>10/2022</td>
</tr>
</tbody>
</table>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (3, 1, N'iPhone 14 Pro Max 128GB', N'<p><strong>Sở hữu chiếc iPhone cao cấp nhất, bạn sẽ thấy sự kh&aacute;c biệt trong từng chi tiết. Cuộc c&aacute;ch mạng đột ph&aacute; với thiết kế m&agrave;n h&igrave;nh &ldquo;vi&ecirc;n thuốc&rdquo; đầu ti&ecirc;n, camera 48MP vượt trội v&agrave; sức mạnh ho&agrave;n hảo bởi bộ vi xử l&yacute; tối t&acirc;n A16 Bionic. Mọi thứ đ&atilde; sẵn s&agrave;ng cho bạn bước v&agrave;o trải nghiệm&nbsp;c&ocirc;ng nghệ đẳng cấp, đầu ng&agrave;nh hiện nay.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/iPhone-14-Pro-Max.jpg"></p>
<h3><strong>Gặp gỡ m&agrave;n h&igrave;nh Dynamic Island&nbsp;ho&agrave;n to&agrave;n mới</strong></h3>
<p>Một sự cải tiến mang t&iacute;nh c&aacute;ch mạng của&nbsp;iPhone 14 Pro Max l&agrave; m&agrave;n h&igrave;nh&nbsp;Dynamic Island&nbsp;hay c&ograve;n gọi m&agrave;n h&igrave;nh &ldquo;vi&ecirc;n thuốc&rdquo;. Notch được thiết kế mới, gi&uacute;p camera TrueDepth nhỏ hơn 31%, tối ưu kh&ocirc;ng gian. Sự cộng hưởng từ phần mềm với thuật to&aacute;n chuy&ecirc;n biệt cho hiệu ứng s&aacute;ng tạo, mang tới nhiều t&iacute;nh năng hữu &iacute;ch. Từ đ&oacute;, bạn c&oacute; thể thỏa th&iacute;ch thực hiện những thao t&aacute;c ngay tr&ecirc;n notch như điều khiển nhạc, theo d&otilde;i tin nhắn, nhận/từ chối cuộc gọi, hiển thị th&ocirc;ng tin, xem chỉ dẫn bản đồ, hẹn giờ&hellip; Bạn cũng c&oacute; thể chạm v&agrave;o Dynamic Island&nbsp;để chuyển nhanh tới t&aacute;c vụ đang chạy. H&atilde;y thử trải nghiệm để thấy điều kh&aacute;c biệt, độc quyền từ nh&agrave; Apple.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Man-hinh-iPhone-14-Pro-Max.jpg"></p>
<h3><strong>Thiết kế bền bỉ c&ugrave;ng sắc m&agrave;u sang trọng</strong></h3>
<p>iPhone 14 Pro Max được ho&agrave;n thiện từ th&eacute;p kh&ocirc;ng gỉ cao cấp, kết hợp với k&iacute;nh Ceramic trứ danh, tăng cường độ bền bỉ tuyệt đối. Điện thoại cũng được bảo vệ tốt bởi chuẩn chống bụi/nước IP68, chịu được độ s&acirc;u nước tối đa 6 m&eacute;t trong 30 ph&uacute;t. Thiết kế iPhone 14 Pro Max c&ograve;n đảm bảo t&iacute;nh thời thượng, tinh tế với sắc m&agrave;u t&iacute;m Deep Purple trendy, b&ecirc;n cạnh c&aacute;c m&agrave;u sang trọng Gold (v&agrave;ng), Silver (bạc), Space Black (đen).</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Thiet-ke-iPhone-14-Pro-Max.jpg"></p>', 33990000, 36990000, 36990000, 23, N'asset/img/images/Iphone/ip14/pro/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.7 inch, Super Retina XDR, 2796 x 1290 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>48.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>128 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A16 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>29 Giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 16</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>09/2022</td>
</tr>
</tbody>
</table>', 0, 4)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (4, 1, N'iPhone 14 Pro 128GB', N'<p><strong>iPhone 14 Pro đ&aacute;nh dấu bước đột ph&aacute; khi n&acirc;ng cấp độ ph&acirc;n giải từ 12MP l&ecirc;n 48MP &ndash; mức cao nhất từ trước đến nay tr&ecirc;n iPhone. Với Dynamic Island xuất sắc, khả năng quay video chống rung tuyệt hảo v&agrave; sự g&oacute;p mặt của chip A16 Bionic cực mạnh, đ&acirc;y l&agrave; lựa chọn tối ưu cho những ai kiếm t&igrave;m trải nghiệm ho&agrave;n hảo.</strong></p>
<p><strong><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Mo-ta-san-pham-iphone-14-pro-0.jpg"></strong></p>
<h3><strong>Bền bỉ, b&oacute;ng bẩy v&agrave; cực kỳ sang trọng</strong></h3>
<p>B&oacute;ng bẩy, sang trọng v&agrave; lịch l&atilde;m l&agrave; những cảm nhận đầu ti&ecirc;n của bạn khi ngắm nh&igrave;n iPhone 14 Pro. Ngo&agrave;i c&aacute;c m&agrave;u sắc thanh lịch quen thuộc l&agrave; V&agrave;ng (Gold) v&agrave; Bạc (Silver), sản phẩm c&ograve;n đem đến hai t&ugrave;y chọn mới mẻ hơn, thanh lịch hơn gồm T&iacute;m s&acirc;u (Deep Purple) v&agrave; Đen (Space Black).</p>
<p>To&agrave;n bộ th&acirc;n m&aacute;y iPhone 14 Pro đều được chế tạo từ những chất liệu bền bỉ bậc nhất thế giới điện thoại như k&iacute;nh Ceramic Shield v&agrave; bộ khung vỏ th&eacute;p kh&ocirc;ng gỉ. Sản phẩm đạt chuẩn chống nước, chống bụi IP68 cao nhất c&oacute; thể ở c&aacute;c d&ograve;ng smartphone.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Mo-ta-san-pham-iphone-14-pro-2.jpg"></p>
<h3><strong>Biến h&oacute;a linh hoạt c&ugrave;ng Dynamic Island</strong></h3>
<p>Điểm mới mẻ nhất tr&ecirc;n iPhone 14 Pro so với c&aacute;c thế hệ cũ l&agrave; sự hiện diện của phần khuyết h&igrave;nh vi&ecirc;n thuốc mang t&ecirc;n Dynamic Island. Giờ đ&acirc;y, cụm notch của iPhone c&oacute; thể biến h&oacute;a linh hoạt, thay đổi h&igrave;nh d&aacute;ng, chia t&aacute;ch v&agrave; hiển thị linh hoạt t&ugrave;y theo t&aacute;c vụ bạn trải nghiệm.</p>
<p>Tại đ&acirc;y, bạn c&oacute; thể quan s&aacute;t th&ocirc;ng b&aacute;o, điều khiển c&aacute;c t&aacute;c vụ nhạc, tương t&aacute;c với những t&aacute;c vụ nền như cuộc gọi, danh s&aacute;ch ph&aacute;t, podcast hay hẹn giờ... Dynamic Island hoạt động tương th&iacute;ch với Apple Music, tr&igrave;nh gọi điện, FaceTime, Apple Maps, Đồng hồ, AirDrops v&agrave; nhiều điều th&uacute; vị kh&aacute;c nữa.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Mo-ta-san-pham-iphone-14-pro-3.jpg"></p>', 29990000, 39990000, 39990000, 41, N'asset/img/images/Iphone/ip14/pro/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.1 inch, Super Retina XDR, 2556 x 1179 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>48.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>128 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A16 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>23 Giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 16</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>09/2022</td>
</tr>
</tbody>
</table>', 0, 5)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (5, 2, N'iPhone 13 Pro Max 128GB', N'<p><strong>Với iPhone 13 Pro Max, bạn sẽ c&oacute; được trải nghiệm sang trọng từ thiết kế cho đến t&iacute;nh năng. Chiếc iPhone c&oacute; pin xuất sắc nhất lịch sử đảm bảo khiến bạn h&agrave;i l&ograve;ng về thời lượng sử dụng. Ngo&agrave;i ra, chip A15 Bionic v&agrave; cụm ba camera chuy&ecirc;n nghiệp cũng l&agrave; yếu tố mang lại trải nghiệm thực sự đỉnh cao.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-2.jpg"></p>
<h3><strong>Super Retina XDR trải nghiệm h&igrave;nh ảnh tuyệt đẹp</strong></h3>
<p>Trải rộng khắp kh&ocirc;ng gian mặt trước iPhone 13 Pro Max l&agrave; m&agrave;n h&igrave;nh 6.7 inch với tấm nền Super Retina XDR OLED tuyệt sắc. Với độ s&aacute;ng tối đa 1.200 nits, khả năng t&aacute;i hiện nội dung HDR v&agrave; độ ph&acirc;n giải 2.778 x 1.284 pixels, m&agrave;n h&igrave;nh n&agrave;y sẽ gi&uacute;p bạn tận hưởng mọi nội dung theo c&aacute;ch trọn vẹn nhất, m&atilde;n nh&atilde;n nhất. H&atilde;y thỏa sức h&ograve;a m&igrave;nh v&agrave;o những tựa game rực rỡ, xem c&aacute;c bộ phim chất lượng cao, duyệt mail v&agrave; lướt mạng x&atilde; hội tr&ecirc;n kh&ocirc;ng gian hiển thị đẳng cấp của iPhone 13 Pro Max.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/iphone-13-pro-new-1.JPG"></p>
<h3><strong>T&ocirc;ng m&agrave;u sang trọng, t&ocirc;n vinh vẻ đẹp lịch l&atilde;m</strong></h3>
<p>L&agrave; thủ lĩnh của iPhone 13 series, phi&ecirc;n bản iPhone 13 Pro Max bạn đang theo d&otilde;i được Apple ưu &aacute;i trang bị bộ m&agrave;u sắc sang trọng, từ m&agrave;u Bạc thanh lịch, m&agrave;u X&aacute;m b&iacute; ẩn, m&agrave;u V&agrave;ng lịch l&atilde;m cho tới hai phi&ecirc;n bản in đậm dấu ấn sản phẩm như Xanh dương v&agrave; Xanh l&aacute;, tất cả đều được lựa chọn kỹ lưỡng để t&ocirc;n vinh vẻ đẹp sang trọng vốn c&oacute; ở iPhone 13 Pro Max.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/SmartphoneChupDep/iphone-13-pro-max-xanh-la.jpg"></p>
<h3><strong>Chiếc iPhone v&ocirc; địch về pin</strong></h3>
<p>iPhone 13 Pro Max được trang bị vi&ecirc;n pin m&agrave; chưa một chiếc iPhone n&agrave;o c&oacute; được. Với dung lượng 4.352 mAh, đ&acirc;y l&agrave; model c&oacute; pin xuất sắc nhất lịch sử d&ograve;ng điện thoại &ldquo;T&aacute;o khuyết&rdquo;, đủ để đ&aacute;p ứng mọi nhu cầu trải nghiệm của bạn, từ chơi game, xem phim, lướt TikTok, nhắn tin hay gọi FaceTime. So với người tiền nhiệm iPhone 12 Pro Max, thời lượng trải nghiệm của iPhone 13 Pro Max k&eacute;o d&agrave;i th&ecirc;m 2.5 giờ tr&ecirc;n thực tế. Ước t&iacute;nh, sản phẩm c&oacute; thể duy tr&igrave; pin hoạt động tới ng&agrave;y thứ ba với c&aacute;c t&aacute;c vụ th&ocirc;ng thường.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-max-3.jpg"></p>', 27990000, 29990000, 29990000, 47, N'asset/img/images/Iphone/ip13/pro/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.7 inch, OLED, Super Retina XDR, 2778 x 1284 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 12.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>6 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>128 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A15 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple GPU 5 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>4352 mAh</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 15</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
</tbody>
</table>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (6, 2, N'iPhone 13 Pro 128GB', N'<p><strong>Sở hữu chip A15 Bionic với hiệu suất đầu bảng, m&agrave;n h&igrave;nh ProMotion 120Hz si&ecirc;u mượt m&agrave; v&agrave; bộ ba camera đẳng cấp, iPhone 13 Pro sẽ cho bạn những trải nghiệm tuyệt vời bậc nhất, từ tốc độ vận h&agrave;nh cho đến trải nghiệm h&igrave;nh ảnh v&agrave; quay chụp.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/iphone-13-pro-new-2.JPG"></p>
<h3><strong>Vẻ đẹp của sự thanh lịch v&agrave; đẳng cấp</strong></h3>
<p>Sự cao cấp v&agrave; n&eacute;t thanh lịch thể hiện r&otilde; r&agrave;ng tr&ecirc;n từng đường n&eacute;t của iPhone 13 Pro. Apple đ&atilde; lựa chọn chất liệu th&eacute;p kh&ocirc;ng gỉ hết sức cứng c&aacute;p v&agrave; bền bỉ để chế t&aacute;c khung vỏ thiết bị. Ngo&agrave;i ra, h&atilde;ng c&ograve;n phủ l&ecirc;n m&agrave;n h&igrave;nh một lớp gốm Ceramic Shield nhằm gia cố độ bền c&ugrave;ng khả năng chịu lực.</p>
<p>Quy tr&igrave;nh ho&agrave;n thiện tối ưu gi&uacute;p iPhone 13 Pro đạt chuẩn chống nước IP68, đảm bảo năng lực chống thấm v&agrave; chống bụi tốt trong mọi trường hợp. Bạn sẽ t&igrave;m thấy ở sản phẩm n&agrave;y c&aacute;c tone m&agrave;u mang hơi hướng sang trọng như X&aacute;m, V&agrave;ng, Trắng, Xanh Sierra v&agrave; Xanh l&aacute;.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/iphone-13-pro-1.jpg" width="974" height="600"></p>
<h3><strong>Camera vượt trội c&aacute;c thế hệ trước</strong></h3>
<p>Những cải tiến tr&ecirc;n hệ thống quay chụp của iPhone 13 Pro kh&ocirc;ng chỉ giới hạn ở cụm camera m&agrave; c&ograve;n tr&ecirc;n thuật to&aacute;n phần mềm v&agrave; chip, từ đ&oacute; xử l&yacute; t&iacute;n hiệu h&igrave;nh ảnh cực nhanh v&agrave; cho ra c&aacute;c khu&ocirc;n h&igrave;nh chất lượng.</p>
<p>Cụ thể, camera ch&iacute;nh 12MP tr&ecirc;n iPhone 13 Pro c&oacute; khẩu độ F/1.5 với điểm ảnh 1.9 &micro;m, camera g&oacute;c si&ecirc;u rộng khẩu độ F/1.8 v&agrave; camera tele c&oacute; thể zoom quang 3X. Sự kết hợp của bộ ba camera n&agrave;y đem tới năng lực quay chụp thực sự xuất sắc, vượt trội ho&agrave;n to&agrave;n so với c&aacute;c thế hệ iPhone trước.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-16.jpg"></p>
<h3><strong>Những bức ảnh v&agrave; video macro đầy m&ecirc; hoặc</strong></h3>
<p>iPhone 13 Pro c&oacute; khả năng biến những vật thể nhỏ nhất trong cuộc sống của bạn th&agrave;nh t&aacute;c phẩm nghệ thuật. Sản phẩm dễ d&agrave;ng bắt n&eacute;t cận trong phạm vi chỉ 2 cm từ g&oacute;c chụp, một chiếc l&aacute;, một giọt sương, một đ&oacute;a hoa hoặc một ch&uacute; c&ocirc;n tr&ugrave;ng nhỏ đều được khắc họa sống động trong khung h&igrave;nh.</p>
<p>Ngo&agrave;i t&aacute;c vụ chụp ảnh, iPhone 13 Pro c&ograve;n c&oacute; thể quay video macro v&agrave; vinh dự l&agrave; smartphone đầu ti&ecirc;n tr&ecirc;n thế giới sở hữu c&ocirc;ng nghệ n&agrave;y. Apple đ&atilde; bổ sung chức năng tua nhanh v&agrave; tua chậm cho tr&igrave;nh quay macro, gi&uacute;p mỗi thước phim đều hiện l&ecirc;n m&atilde;n nh&atilde;n.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-pro-camera-7.jpg" width="966" height="725"></p>', 24990000, 26990000, 26990000, 45, N'asset/img/images/Iphone/ip13/pro/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>4 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>128 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A15 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple GPU 5 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>3225 mAh</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 15</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>09/2021</td>
</tr>
</tbody>
</table>', 0, 4)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (7, 3, N'iPhone 12 64GB', N'<p><strong>L&agrave; mẫu iPhone&nbsp;đầu ti&ecirc;n được trang bị c&ocirc;ng nghệ 5G, đem đến sức mạnh vượt trội nhờ chip A14 Bionic xuất sắc h&agrave;ng đầu, iPhone 12 hội tụ mọi yếu tố để bạn c&oacute; được trải nghiệm điện thoại xuất sắc. Trong đ&oacute; m&agrave;n h&igrave;nh OLED v&agrave; camera si&ecirc;u chụp đ&ecirc;m cũng l&agrave; những yếu tố kh&ocirc;ng thể bỏ qua.</strong>&nbsp;</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/iphone-12-tim-8.JPG" width="977" height="362"></p>
<h3><strong>Thiết kế thanh lịch, cứng c&aacute;p v&agrave; đẳng cấp</strong></h3>
<p>So với iPhone 11, phi&ecirc;n bản iPhone 12 sở hữu kiểu d&aacute;ng thanh lịch v&agrave; th&acirc;n thiện hơn với cấu tr&uacute;c th&acirc;n m&aacute;y được l&agrave;m mỏng th&ecirc;m 11%, r&uacute;t gọn tiết diện tổng thể th&ecirc;m 15% v&agrave; giảm trọng lượng 16%. Chiếc điện thoại bạn đang theo d&otilde;i sở hữu m&agrave;n h&igrave;nh 6.1 inch m&agrave; vẫn đảm bảo t&iacute;nh gọn nhẹ cơ động. Bộ khung vỏ nh&ocirc;m được v&aacute;t phẳng c&aacute;c cạnh tạo n&ecirc;n ng&ocirc;n ngữ thiết kế thanh lịch, quyến rũ.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-2(1).JPG"></p>
<h3><strong>Bảo vệ mặt trước với lớp phủ Ceramic Shield</strong></h3>
<p>Sự cao cấp của iPhone 12 được thể hiện ngay từ c&aacute;ch Apple lựa chọn vật liệu ho&agrave;n thiện thiết bị. Cụ thể, h&atilde;ng sử dụng một lớp gốm Ceramic Shield cứng c&aacute;p phủ l&ecirc;n to&agrave;n bộ mặt trước iPhone 12, gia tăng độ chịu lực v&agrave; năng lực chống xước. To&agrave;n bộ cấu tr&uacute;c viền được bo gọn tối đa để đem lại cảm gi&aacute;c thanh tho&aacute;t, trọn vẹn khi nh&igrave;n ngắm, quan s&aacute;t.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/iphone-12-tim-4.JPG"></p>
<h3><strong>Bảo vệ mặt trước với lớp phủ Ceramic Shield</strong></h3>
<p>Sự cao cấp của iPhone 12 được thể hiện ngay từ c&aacute;ch Apple lựa chọn vật liệu ho&agrave;n thiện thiết bị. Cụ thể, h&atilde;ng sử dụng một lớp gốm Ceramic Shield cứng c&aacute;p phủ l&ecirc;n to&agrave;n bộ mặt trước iPhone 12, gia tăng độ chịu lực v&agrave; năng lực chống xước. To&agrave;n bộ cấu tr&uacute;c viền được bo gọn tối đa để đem lại cảm gi&aacute;c thanh tho&aacute;t, trọn vẹn khi nh&igrave;n ngắm, quan s&aacute;t.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-5(1).JPG"></p>', 16499000, 19499000, 19499000, 46, N'asset/img/images/Iphone/ip12/normal/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>4 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>64 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A14 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>2815 mAh</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>2 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 14</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>10/2020</td>
</tr>
</tbody>
</table>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (8, 4, N'iPhone 11 64GB', N'<p><strong>Với bộ sưu tập m&agrave;u sắc đa dạng, camera quay chụp vượt trội, chạy chip xử l&yacute; mạnh mẽ h&agrave;ng đầu v&agrave; thể hiện thời lượng sử dụng d&agrave;i l&acirc;u, iPhone 11 sẽ đem lại trải nghiệm thực sự ấn tượng cho bạn.</strong></p>
<p><img src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-1.jpg"></p>
<h3><strong>Bộ m&agrave;u sắc c&aacute; t&iacute;nh v&agrave; thời trang</strong></h3>
<p>iPhone 11 đem đến bộ m&agrave;u sắc c&aacute; t&iacute;nh v&agrave; hết sức trẻ trung, bao gồm Đen, Trắng, Đỏ, T&iacute;m, V&agrave;ng, Xanh lục. Mỗi m&agrave;u sắc đều được Apple tuyển chọn kỹ c&agrave;ng sao cho hợp nhất với thiết kế tổng thể của sản phẩm. Thiết bị sở hữu bộ khung vỏ chế t&aacute;c từ chất liệu nh&ocirc;m nguy&ecirc;n khối liền mạch, ph&ocirc; diễn vẻ đẹp thanh lịch, cao cấp m&agrave; vẫn trẻ trung.</p>
<p><img src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-2.jpg"></p>
<h3><strong>Trải nghiệm quay phim chuy&ecirc;n nghiệp thực thụ</strong></h3>
<p>Sự kết hợp của hệ thống camera 12MP + 12MP gi&uacute;p iPhone 11 c&oacute; thể s&aacute;ng tạo n&ecirc;n những thước phim cực độ ấn tượng với chất lượng 4K 60fps sắc sảo. iPhone 11 sẽ dễ d&agrave;ng bắt trọn mọi chuyển động để tạo n&ecirc;n c&aacute;c video mượt m&agrave; trọn vẹn. Đặc biệt, sản phẩm được hỗ trợ c&ocirc;ng nghệ thu &acirc;m tập trung v&agrave;o một chủ thể n&agrave;o đ&oacute; qua thao t&aacute;c thu &ndash; ph&oacute;ng h&igrave;nh ảnh, thiết bị sẽ tự động tập trung thu &acirc;m ở ch&iacute;nh chủ thể bạn zoom.</p>
<p><img src="http://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-4.jpg"></p>', 11499000, 18499000, 18499000, 50, N'asset/img/images/Iphone/ip11/normal/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>6.1 inch, IPS LCD, Liquid Retina HD, 828 x 1792 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP + 12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>4 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>64 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A13 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple GPU 4 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>3110 mAh</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>2 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 14</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>09/2019</td>
</tr>
</tbody>
</table>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (9, 5, N'iPhone SE 2022 64GB', N'<p><strong>Quen thuộc trong thiết kế, mạnh mẽ ở cấu h&igrave;nh, iPhone SE 2022 l&agrave; sự h&ograve;a trộn đặc biệt giữa c&ocirc;ng nghệ c&aacute;ch t&acirc;n v&agrave; kiểu d&aacute;ng gọn nhẹ. Bạn sẽ t&igrave;m thấy tr&ecirc;n chiếc điện thoại n&agrave;y ph&iacute;m home tr&ograve;n đầy ho&agrave;i niệm, chip xử l&yacute; A15 Bionic cực mạnh c&ugrave;ng kết nối 5G nổi bật.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/mo-ta-san-pham-iphone-se-2022-64gb-1.jpg"></p>
<h3><strong>M&agrave;n h&igrave;nh 4.7 inch v&agrave; ph&iacute;m home tr&ograve;n</strong></h3>
<p>iPhone SE 2022 thừa hưởng phong c&aacute;ch thiết kế gắn liền với d&ograve;ng điện thoại Apple trong một thời gian d&agrave;i. Tr&ecirc;n thiết bị n&agrave;y, bạn sẽ t&igrave;m thấy kiểu d&aacute;ng gọn nhẹ với m&agrave;n h&igrave;nh 4.7 inch nhỏ nhắn, c&oacute; thể cầm nắm gọn g&agrave;ng v&agrave;&nbsp;thao t&aacute;c một tay tr&ecirc;n to&agrave;n kh&ocirc;ng gian hiển thị, cực kỳ linh hoạt v&agrave; cơ động tối đa.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/mo-ta-san-pham-iphone-se-2022-64gb-2.jpg"></p>
<h3><strong>Sức mạnh đ&aacute;ng ngạc nhi&ecirc;n của A15 Bionic</strong></h3>
<p>Với bộ vi xử l&yacute; A15 Bionic, iPhone SE 2022 c&oacute; được nguồn sức mạnh ấn tượng v&agrave; thể hiện năng lực xử l&yacute; t&aacute;c vụ hiệu quả kh&ocirc;ng thua k&eacute;m c&aacute;c model thuộc ph&acirc;n kh&uacute;c cao cấp thực thụ. Con chip n&agrave;y gi&uacute;p phi&ecirc;n bản iPhone SE mới dễ d&agrave;ng chạy tốt c&aacute;c tựa game nặng, để mọi ứng dụng đều được xử l&yacute; mượt m&agrave; ấn tượng.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/mo-ta-san-pham-iphone-se-2022-64gb-b.JPG"></p>
<h3><strong>Thỏa sức tận hưởng mọi tr&ograve; chơi bạn muốn</strong></h3>
<p>Nhờ nguồn sức mạnh ấn tượng m&agrave; chip A15 Bionic đem đến, iPhone SE 2022 sẽ tạo điều kiện để bạn tận hưởng mọi tr&ograve; chơi tr&ecirc;n kho ứng dụng App Store. Với mức hiệu suất đồ hoạt vượt trội gấp 1.2 lần so với người tiền nhiệm ra mắt năm 2020, chiếc điện thoại n&agrave;y mở ra thế giới giải tr&iacute; phong ph&uacute; v&agrave; sống động. Bạn sẽ kh&ocirc;ng cảm nhận thấy bất cứ dấu hiệu giật lag n&agrave;o khi tận hưởng c&aacute;c tr&ograve; chơi tr&ecirc;n iPhone SE 2022.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/S7TInDon/mo-ta-san-pham-iphone-se-2022-64gb-d.JPG"></p>
<p>&nbsp;</p>', 11290000, 18290000, 18290000, 50, N'asset/img/images/Iphone/se2022/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>4.7 inch, IPS LCD, HD, 1334 x 750 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Camera sau</td>
<td>12.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">Camera Selfie</td>
<td>7.0 MP</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>4 GB</td>
</tr>
<tr>
<td style="width: 140px;">Bộ nhớ trong</td>
<td>64 GB</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple A15 Bionic</td>
</tr>
<tr>
<td style="width: 140px;">GPU</td>
<td>Apple GPU 4 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Dung lượng pin</td>
<td>15 Giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thẻ sim</td>
<td>1 - 1 eSIM, 1 Nano SIM</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>iOS 15</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian ra mắt</td>
<td>08/03/2022</td>
</tr>
</tbody>
</table>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (10, 14, N'MacBook Air 13.6 inch M2 2022 16GB 512GB ss', N'<p><strong>Với 16GB RAM, phi&ecirc;n bản MacBook Air M2 2022 bạn đang theo d&otilde;i sẽ c&oacute; thể ph&aacute;t huy trọn vẹn hiệu năng từ bộ vi xử l&yacute; M2 đ&igrave;nh đ&aacute;m. Kh&ocirc;ng chỉ ghi điểm ở th&acirc;n m&aacute;y mỏng nhẹ sắc sảo, sản phẩm c&ograve;n trao tới người d&ugrave;ng nguồn sức mạnh thực sự ấn tượng.</strong></p>
<p><strong><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Android/Mo-ta-san-pham-macbook-air-m2-2022-13-inch-16gb-2.jpg"></strong></p>
<h3><strong>Hiệu năng dẫn đầu được tối ưu sức mạnh</strong></h3>
<p>Được cải tiến để c&oacute; hiệu năng vượt trội, MacBook Air M2 2022 giờ đ&acirc;y đạt tới ngưỡng sức mạnh cao nhất tr&ecirc;n phi&ecirc;n bản RAM 16GB. Bạn sẽ dễ d&agrave;ng thực hiện c&ugrave;ng l&uacute;c nhiều t&aacute;c vụ nặng, đa nhiệm xuất sắc v&agrave; c&oacute; thể chỉnh sửa nhiều luồng video 4K v&agrave; 8K ProRes hiệu suất cao.</p>
<p>Với nguồn sức mạnh mới trong tay, bạn c&oacute; thể l&agrave;m việc &ndash; giải tr&iacute; th&acirc;u đ&ecirc;m suốt s&aacute;ng nhờ thời lượng pin chạm ngưỡng 18 giờ.&nbsp;<a href="https://fptshop.com.vn/may-tinh-xach-tay/macbook-air-m2-2022-13-inch">MacBook Air M2 2022</a>&nbsp;chỉnh sửa video nhanh gấp 1.4 lần so với&nbsp;<a href="https://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-2020-m1-256gb">MacBook Air M1</a>&nbsp;v&agrave; nhanh gấp 15 lần nếu đặt cạnh phi&ecirc;n bản chạy chip Intel Core i5 l&otilde;i k&eacute;p.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Android/Mo-ta-san-pham-macbook-air-m2-2022-13-inch-16gb-3.jpg"></p>
<h3><strong>Chạm đến đỉnh cao thời trang của laptop</strong></h3>
<p>MacBook Air M2 2022 sẽ khiến bạn kinh ngạc về độ mỏng gọn của m&igrave;nh. Sự hỗ trợ của chip xử l&yacute;&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-chip-apple-m2-147131">Apple M2</a>&nbsp;gi&uacute;p sản phẩm vừa đảm bảo được sức mạnh ấn tượng m&agrave; vẫn duy tr&igrave; được t&iacute;nh thời trang v&agrave; vẻ ngo&agrave;i sắc sảo.</p>
<p>Kết cấu mỏng nhẹ gi&uacute;p MacBook Air M2 c&oacute; thể ph&aacute;t huy t&iacute;nh cơ động một c&aacute;ch tối đa. To&agrave;n bộ hệ thống khung vỏ v&agrave; mọi chi tiết tr&ecirc;n th&acirc;n m&aacute;y đều được chế tạo ho&agrave;n to&agrave;n từ nh&ocirc;m t&aacute;i chế cực kỳ th&acirc;n thiện với m&ocirc;i trường.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Android/Mo-ta-san-pham-macbook-air-m2-2022-13-inch-16gb-5.jpg"></p>', 35990000, 39990000, 39990000, 49, N'asset/img/images/mac/air2022/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>13.6 inch, 2560 x 1644 Pixels, 500 nits, Retina</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple, M2, 8 - Core</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>16 GB, LPDDR4, 3200 MHz</td>
</tr>
<tr>
<td style="width: 140px;">Ổ cứng</td>
<td>SSD 256 GB</td>
</tr>
<tr>
<td style="width: 140px;">Đồ họa</td>
<td>Apple M2 GPU 8 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>macOS 12</td>
</tr>
<tr>
<td style="width: 140px;">Trọng lượng</td>
<td>1.24</td>
</tr>
<tr>
<td style="width: 140px;">K&iacute;ch thước</td>
<td>30.41 x 21.5 x 1.13 cm</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Năm ra mắt</td>
<td>2022</td>
</tr>
</tbody>
</table>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (11, 15, N'MacBook Pro M2 2022 13 inch 8CPU 10GPU 16GB 256GB', N'<p><strong>C&ugrave;ng vươn đến những trải nghiệm chuy&ecirc;n nghiệp với MacBook Pro 2022 phi&ecirc;n bản 16GB. Với sản phẩm n&agrave;y, Apple đ&atilde; tối ưu trải nghiệm pin tới mức 20 giờ v&agrave; t&iacute;ch hợp hệ thống tản nhiệt hiệu quả để duy tr&igrave; hiệu năng ấn tượng mọi l&uacute;c. Dung lượng RAM 16GB mở ra cơ hội đa nhiệm mọi t&aacute;c vụ thực sự mượt m&agrave;.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/TinMoi/macbook-pro-m2-a.jpg"></p>
<h3><strong>Apple M2 đ&aacute;p ứng mọi kỳ vọng về hiệu năng</strong></h3>
<p>MacBook Pro M2 2022 16GB đ&aacute;nh dấu bước nhảy vọt về sức mạnh mới với sự g&oacute;p mặt của chip xử l&yacute; M2 mạnh mẽ, được chế t&aacute;c tr&ecirc;n tiến tr&igrave;nh 5nm hiện đại bậc nhất thế giới v&agrave; bao gồm 8 l&otilde;i CPU, 10 l&otilde;i CPU. Hội tụ 20 tỷ b&oacute;ng b&aacute;n dẫn, con chip mới sẽ gi&uacute;p MacBook Pro M2 thể hiện hiệu suất tuyệt vời trong mọi trải nghiệm.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/TinMoi/macbook-pro-m2-e.jpg"></p>
<h3><strong>Chuy&ecirc;n nghiệp hơn với dung lượng RAM 16GB</strong></h3>
<p>T&ugrave;y chọn 16GB RAM bạn đang theo d&otilde;i sẽ gi&uacute;p MacBook Pro 2022 ph&aacute;t huy trọn vẹn tiềm năng sức mạnh m&agrave; con chip M2 c&oacute; được. Giờ đ&acirc;y, việc đa nhiệm v&agrave; vận h&agrave;nh song song mọi t&aacute;c vụ từ l&agrave;m việc, giải tr&iacute;, học tập tr&ecirc;n c&ugrave;ng một thiết bị trở n&ecirc;n đơn giản v&agrave; hiệu quả hơn bao giờ hết. H&atilde;y thỏa sức l&agrave;m mọi điều bạn muốn với sự hỗ trợ của MacBook Pro M2 2022 16GB.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/TinMoi/macbook-pro-m2-c.jpg"></p>
<h3><strong>Duy tr&igrave; hiệu năng nhờ hệ thống tản nhiệt hiệu quả</strong></h3>
<p>B&ecirc;n trong cấu tr&uacute;c th&acirc;n m&aacute;y, MacBook Pro M2 2022 16GB được trang bị một hệ thống tản nhiệt hiệu quả sẽ vận h&agrave;nh xuy&ecirc;n suốt để đảm bảo kh&ocirc;ng gian linh kiện lu&ocirc;n giữ nhiệt độ an to&agrave;n, từ đ&oacute; duy tr&igrave; hiệu năng CPU v&agrave; GPU ở ngưỡng tốt nhất d&ugrave; phải vận h&agrave;nh nhiều giờ li&ecirc;n tục kh&ocirc;ng nghỉ.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/TinMoi/macbook-pro-m2-7.jpg"></p>', 38490000, 39490000, 39490000, 44, N'asset/img/images/mac/pro2022/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>13.3 inch, 2560 x 1600 Pixels, 500 nits, Retina</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple, M2, 8 - Core</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>16 GB, LPDDR4, 3200 MHz</td>
</tr>
<tr>
<td style="width: 140px;">Ổ cứng</td>
<td>SSD 256 GB</td>
</tr>
<tr>
<td style="width: 140px;">Đồ họa</td>
<td>Apple M2 GPU 10 nh&acirc;n</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>macOS 12</td>
</tr>
<tr>
<td style="width: 140px;">Trọng lượng</td>
<td>1.4 kg</td>
</tr>
<tr>
<td style="width: 140px;">K&iacute;ch thước</td>
<td>304.1 x 212.4 x 15.6 mm</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Năm ra mắt</td>
<td>2022</td>
</tr>
</tbody>
</table>', 0, 5)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (12, 16, N'iMac 24', N'<p><strong>Dẫn đầu tr&agrave;o lưu thiết kế All in One tr&ecirc;n to&agrave;n cầu, iMac 24 inch 2021 phi&ecirc;n bản M1 4.5K sẽ gi&uacute;p cho kh&ocirc;ng gian l&agrave;m việc v&agrave; giải tr&iacute; của ch&uacute;ng ta trở n&ecirc;n chuy&ecirc;n nghiệp hơn, th&uacute; vị hơn. Tr&ecirc;n sản phẩm n&agrave;y, bạn sẽ t&igrave;m thấy những phẩm chất đặc trưng của một sản phẩm đến từ Apple.</strong><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/imac-24-2021-36.JPG"></p>
<h3><strong>iMac giờ đ&acirc;y trẻ trung hơn, th&acirc;n thiện hơn</strong></h3>
<p>Thế hệ iMac 24 inch 2021 đ&aacute;nh dấu bước chuyển m&igrave;nh mới về mặt thiết kế. Vẫn l&agrave; phong c&aacute;ch tối giản đ&atilde; th&agrave;nh thương hiệu của Apple nhưng giờ đ&acirc;y, iMac đ&atilde; trở n&ecirc;n mỏng hơn rất nhiều. Ngo&agrave;i ra, bạn sẽ c&oacute; đa dạng lựa chọn m&agrave;u sắc nổi bật trẻ trung như: Bạc, Xanh l&aacute;, xanh dương, Đỏ, Cam... Đặc biệt, phần c&aacute;p kết nối của iMac 24 inch 2021 cũng được dệt với chất liệu c&ugrave;ng m&agrave;u với th&acirc;n m&aacute;y, thể hiện r&otilde; bản sắc c&aacute; t&iacute;nh m&agrave; iMac thế hệ mới hướng tới.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/imac-24-2021-31.JPG"></p>
<h3><strong>Vẻ đẹp cao cấp của sự tối giản</strong></h3>
<p>Sự xuất hiện của chip M1 cực kỳ mạnh mẽ tạo điều kiện để Apple r&uacute;t gọn độ d&agrave;y iMac 24 inch 2021 xuống mức 11.5mm &ndash; mỏng chưa từng thấy ở d&ograve;ng iMac. Chiếc m&aacute;y t&iacute;nh All-in-One n&agrave;y được n&acirc;ng đỡ bởi hệ thống ch&acirc;n đế vững v&agrave;ng, sử dụng bản lề th&ocirc;ng minh để cố định to&agrave;n bộ cấu tr&uacute;c b&ecirc;n tr&ecirc;n m&agrave; vẫn cho thấy độ linh hoạt khi căn chỉnh g&oacute;c nh&igrave;n.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/imac-24-2021-25.JPG"></p>
<h3><strong>M&agrave;n h&igrave;nh 4.5K, gam m&agrave;u rộng P3, hiển thị 1 tỷ m&agrave;u</strong></h3>
<p>iMac 2021 sử dụng m&agrave;n h&igrave;nh 24 inch, độ ph&acirc;n giải 4.5K cực sắc n&eacute;t. Đ&acirc;y l&agrave; thiết bị sinh ra d&agrave;nh cho giới s&aacute;ng tạo nội dung với gam m&agrave;u rộng P3 v&agrave; khả năng hiển thị đến 1 tỷ m&agrave;u. Ngo&agrave;i ra, iMac 2021 c&ograve;n đạt độ s&aacute;ng tối đa 500 nits, trang bị lớp phủ chống ch&oacute;i nhằm đem lại cảm nhận dễ chịu khi nh&igrave;n ngắm. Mọi h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh iMac 2021 đều cực kỳ tự nhi&ecirc;n, th&acirc;n thiện bởi c&ocirc;ng nghệ TrueTone sẽ tối ưu m&agrave;u sắc dựa tr&ecirc;n cường độ &aacute;nh s&aacute;ng của m&ocirc;i trường xung quanh.&nbsp;</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/imac-24-2021-10.JPG"></p>', 37499000, 39499000, 39499000, 44, N'asset/img/images/mac/iMac/bac1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>24 inch, 4480 x 2520 Pixels, Retina</td>
</tr>
<tr>
<td style="width: 140px;">CPU</td>
<td>Apple, M1, 8 - Core</td>
</tr>
<tr>
<td style="width: 140px;">RAM</td>
<td>8 GB, LPDDR4</td>
</tr>
<tr>
<td style="width: 140px;">Trọng lượng</td>
<td>4480 g</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Năm ra mắt</td>
<td>2021</td>
</tr>
</tbody>
</table>', 0, 6)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (13, 17, N'Ốp lưng iPhone 14 Silicone Case with Magsafe', N'<p><strong>Ốp lưng iPhone 14 Silicone Case with Magsafe l&agrave; một sản phẩm ch&iacute;nh h&atilde;ng của&nbsp;<a href="https://fptshop.com.vn/apple">Apple</a>. Phụ kiện n&agrave;y kh&ocirc;ng chỉ gi&uacute;p bảo vệ&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-14">iPhone 14</a>&nbsp;m&agrave; c&ograve;n hỗ trợ c&ocirc;ng nghệ MagSafe v&agrave; được cung cấp trong nhiều tuỳ chọn m&agrave;u sắc thời trang.</strong></p>
<h3><strong>Cải thiện trải nghiệm cầm nắm</strong></h3>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/VuTT29/06-iPhone-14-Silicone-Case-with-Magsafe-01.jpg"></p>
<p>Nếu như bạn lo sợ cạnh viền vu&ocirc;ng vức của iPhone 14 c&oacute; thể l&agrave;m bạn kh&oacute; chịu, ốp lưng iPhone 14 Silicone Case with Magsafe sẽ gi&uacute;p bạn giải quyết vấn đề đ&oacute;. Được ho&agrave;n thiện từ chất liệu silicone si&ecirc;u mềm mại v&agrave; th&acirc;n thiện với da tay,&nbsp;<a href="https://fptshop.com.vn/phu-kien">phụ kiện</a>&nbsp;của Apple sẽ đảm bảo cung cấp cho người d&ugrave;ng một trải nghiệm cầm nắm thoải m&aacute;i trong suốt qu&aacute; tr&igrave;nh sử dụng. Hơn nữa, chất liệu n&agrave;y cũng rất bền bỉ, hạn chế b&aacute;m mồ h&ocirc;i v&agrave; chống trơn trượt tuyệt vời.</p>
<p>&nbsp;</p>', 1590000, 1990000, 1990000, 49, N'asset/img/images/phukien/op/ip12/normal/den1.webp', NULL, 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (14, 18, N'Tai nghe AirPods Pro 2022', N'<p><strong>Tai nghe AirPods Pro 2022 (thế hệ thứ 2) mang đến trải nghiệm &acirc;m thanh phong ph&uacute; chưa từng thấy. T&iacute;nh năng khử ồn chủ động thế hệ mới v&agrave; &acirc;m thanh th&iacute;ch ứng sẽ đưa bạn tới thế giới &acirc;m thanh ri&ecirc;ng biệt, đắm ch&igrave;m trong những bản nhạc y&ecirc;u th&iacute;ch.</strong></p>
<p><strong><img src="https://fptshop.com.vn/Uploads/images/2015/0511/airpods-pro-2-1.jpg"></strong></p>
<h3><strong>Chip H2 th&ocirc;ng minh mang tới &acirc;m thanh sống động</strong></h3>
<p>&ldquo;Bộ n&atilde;o&rdquo; của AirPods Pro 2022 đến từ con chip H2 mới, gi&uacute;p tăng cường hiệu suất &acirc;m thanh một c&aacute;ch to&agrave;n diện. Chip H2 c&oacute; thể tối ưu &acirc;m thanh hiệu quả, hoạt động dựa tr&ecirc;n sự kết hợp của tr&igrave;nh điều khiển loa v&agrave; bộ khuếch đại, đem lại thanh &acirc;m sắc sảo hơn, trung thực hơn. Những nốt cao trọn vẹn v&agrave; từng &acirc;m trầm s&acirc;u lắng đều được xử l&yacute; tốt, sống động v&agrave; phong ph&uacute; tr&ecirc;n AirPods Pro 2.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/airpods-pro-2-2.jpg"></p>
<h3><strong>Thưởng thức &acirc;m thanh ba chiều cực đỉnh</strong></h3>
<p>Chip H2 tr&ecirc;n AirPods Pro 2 thực hiện rất nhiều chức năng, sử dụng c&aacute;c thuật to&aacute;n để mang đến &acirc;m thanh ba chiều vượt trội. Con chip n&agrave;y sẽ xử l&yacute; &acirc;m thanh nhanh hơn, điều chỉnh &acirc;m thanh ngay lập tức theo thời gian thực. Sự g&oacute;p mặt của bộ vi xử l&yacute; với những c&ocirc;ng nghệ hiện đại sẽ gi&uacute;p t&iacute;nh năng Adaptive EQ vận h&agrave;nh hiệu quả để tinh chỉnh chất &acirc;m ng&agrave;y c&agrave;ng hay v&agrave; trung thực hơn theo thời gian. Kết quả l&agrave; bạn sẽ được đắm ch&igrave;m trong kh&ocirc;ng gian &acirc;m thanh đầy ch&acirc;n thực.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/airpods-pro-2-3.jpg"></p>', 6990000, 7990000, 7990000, 45, N'asset/img/images/phukien/tainghe/airpods_pro_2022/trang1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">Loại tai nghe</td>
<td>Tai nghe kh&ocirc;ng d&acirc;y</td>
</tr>
<tr>
<td style="width: 140px;">T&iacute;nh năng</td>
<td>Sạc kh&ocirc;ng d&acirc;y, Chống ồn</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (15, 19, N'Dây sạc Apple Magsafe Charger to USB-C Cable 1m', N'<p><strong>Ph&aacute;t huy c&ocirc;ng nghệ sạc được Apple s&aacute;ng tạo v&agrave; hỗ trợ tr&ecirc;n c&aacute;c d&ograve;ng iPhone thế hệ mới, bộ&nbsp;<a href="https://fptshop.com.vn/phu-kien/sac-cap">c&aacute;p sạc</a>&nbsp;MagSafe Charger to USB-C tận dụng cơ chế từ t&iacute;nh độc đ&aacute;o để tự động cố định chặt v&agrave;o mặt lưng m&aacute;y v&agrave; truyền tải năng lượng nhanh ch&oacute;ng. Sự gọn nhẹ, tiện lợi c&ugrave;ng khả năng tương th&iacute;ch tuyệt vời với&nbsp;<a href="https://fptshop.com.vn/dien-thoai/apple-iphone">iPhone</a>&nbsp;l&agrave; những ưu điểm xuất sắc của sản phẩm n&agrave;y.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/LinhTinh/day-sac-magsafe-charger-to-usb-c-cable-1.jpg"></p>
<h3><strong>Phong c&aacute;ch thanh lịch v&agrave; nhẹ nh&agrave;ng</strong></h3>
<p>So với c&aacute;c d&ograve;ng&nbsp;<a href="https://fptshop.com.vn/phu-kien/sac-cap-khong-day">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;kh&aacute;c tr&ecirc;n thị trường, sạc MagSafe Charger to USB-C c&oacute; thiết kế gọn g&agrave;ng hơn nhiều. Sản phẩm c&oacute; cấu tr&uacute;c tối giản mang đậm phong c&aacute;ch đặc trưng của Apple, với kiểu d&aacute;ng tr&ograve;n đầy thiện cảm c&ugrave;ng c&aacute;p USB-C gắn liền. Xuy&ecirc;n suốt thiết kế của MagSafe Charger, đội ngũ kỹ sư T&aacute;o khuyết sử dụng m&agrave;u trắng nhằm n&ecirc;u bật tinh thần thanh lịch, nhẹ nh&agrave;ng m&agrave; h&atilde;ng lu&ocirc;n hướng tới.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/LinhTinh/day-sac-magsafe-charger-to-usb-c-cable-2.jpg"></p>
<h3><strong>Lợi thế của cơ chế sạc từ t&iacute;nh</strong></h3>
<p>Điểm kh&aacute;c biệt lớn nhất của bộ sạc MagSafe Charger to USB-C nằm việc ph&aacute;t huy cơ chế từ t&iacute;nh khi c&oacute; thể tự cố định v&agrave; gắn chặt lấy mặt lưng c&aacute;c mẫu điện thoại thuộc&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-12-series">iPhone 12 series</a>&nbsp;v&agrave;&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-13-series">iPhone 13 series</a>. Nhờ đ&oacute;, chủ nh&acirc;n bộ sản phẩm sẽ kh&ocirc;ng phải đặt m&aacute;y nằm cố định như khi sử dụng những đế sạc kh&ocirc;ng d&acirc;y kh&aacute;c tr&ecirc;n thị trường. MagSafe Charger to USB-C được nghi&ecirc;n cứu để tương th&iacute;ch với c&aacute;c d&ograve;ng&nbsp;<a href="https://fptshop.com.vn/apple/cover">ốp lưng ch&iacute;nh h&atilde;ng Apple</a>&nbsp;nhằm duy tr&igrave; lực h&uacute;t từ t&iacute;nh, đảm bảo tốc độ cũng như hiệu quả sạc.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/LinhTinh/day-sac-magsafe-charger-to-usb-c-cable-7.jpg"></p>', 1190000, 1590000, 1590000, 48, N'asset/img/images/phukien/daysac/trang1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">Loại</td>
<td>C&aacute;p sạc</td>
</tr>
<tr>
<td style="width: 140px;">Cổng giao tiếp</td>
<td>Đầu ra: Magsafe Charger, Đầu v&agrave;o: Type C</td>
</tr>
<tr>
<td style="width: 140px;">T&iacute;nh năng</td>
<td>Sạc nhanh</td>
</tr>
<tr>
<td style="width: 140px;">Sử dụng cho thiết bị</td>
<td>iPhone, Điện thoại</td>
</tr>
</tbody>
</table>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (16, 20, N'Bàn phím không dây Apple Magic Keyboard 2021 Touch ID and Numeric Keypad', N'<p><strong>Chiếc Magic Keyboard bạn đang theo d&otilde;i l&agrave; phi&ecirc;n bản mới nhất v&agrave; trọn vẹn nhất khi được bổ sung cả cụm ph&iacute;m số c&ugrave;ng c&aacute;c ph&iacute;m điều hướng. Sản phẩm g&acirc;y ấn tượng bởi phong c&aacute;ch thiết kế tối giản, thanh lịch, đi k&egrave;m cảm biến v&acirc;n tay Touch ID v&agrave; khả năng tương th&iacute;ch tuyệt vời với m&aacute;y Mac.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/NenMuaS6honNexus/Magic-keyboard-2021-touch-id-and-numeric-keypad-1.jpg"></p>
<h3><strong>Phong c&aacute;ch tối giản, thanh lịch v&agrave; nhỏ gọn</strong></h3>
<p>X&acirc;y dựng thiết kế với triết l&yacute; đặc trưng của&nbsp;<a href="https://fptshop.com.vn/apple">Apple</a>, Magic Keyboard 2021 phi&ecirc;n bản Numeric Keypad cho thấy sự tối giản trong phong c&aacute;ch, m&agrave;u sắc v&agrave; k&iacute;ch cỡ. Đ&acirc;y l&agrave; một trong những&nbsp;<a href="https://fptshop.com.vn/phu-kien/ban-phim">b&agrave;n ph&iacute;m</a>&nbsp;hỗ trợ ph&iacute;m số nhỏ gọn nhất thị trường. Sự kết hợp kh&eacute;o l&eacute;o giữa hai m&agrave;u trắng - bạc tại c&aacute;c chi tiết kh&aacute;c nhau tạo n&ecirc;n d&aacute;ng vẻ chỉn chu, thanh lịch, đồng thời đem đến cảm gi&aacute;c chuy&ecirc;n nghiệp khi hiện diện tr&ecirc;n b&agrave;n l&agrave;m việc của bạn.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/NenMuaS6honNexus/Magic-keyboard-2021-touch-id-and-numeric-keypad-2.jpg"></p>
<h3><strong>Hỗ trợ ph&iacute;m số v&agrave; ph&iacute;m điều hướng</strong></h3>
<p>So với phi&ecirc;n bản Magic Keyboard th&ocirc;ng thường, bộ&nbsp;<a href="https://fptshop.com.vn/phu-kien/ban-phim-khong-day">b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y</a>&nbsp;n&agrave;y được hỗ trợ th&ecirc;m cụm ph&iacute;m số c&ugrave;ng c&aacute;c ph&iacute;m điều hướng tr&aacute;i &ndash; phải &ndash; l&ecirc;n &ndash; xuống. Điều n&agrave;y gi&uacute;p hỗ trợ rất tốt cho những người l&agrave;m c&ocirc;ng việc li&ecirc;n quan đến nhập liệu như kế to&aacute;n, t&agrave;i ch&iacute;nh, văn ph&ograve;ng v&agrave; đang cần một bộ b&agrave;n ph&iacute;m đạt độ tương th&iacute;ch tốt nhất với chiếc m&aacute;y Mac của m&igrave;nh. Hệ thống ph&iacute;m điều hướng được x&acirc;y dựng d&agrave;nh cho những người thường xuy&ecirc;n chơi game để thực hiện c&aacute;c t&aacute;c vụ di chuyển li&ecirc;n tục.</p>
<h3><strong>X&aacute;c thực nhanh qua Touch ID</strong></h3>
<p>Cảm biến v&acirc;n tay Touch ID đặt cạnh c&aacute;c ph&iacute;m chức năng sẽ phụ tr&aacute;ch t&aacute;c vụ bảo mật cho người d&ugrave;ng trong qu&aacute; tr&igrave;nh sử dụng hoặc đăng nhập. Theo Apple, khi m&agrave; h&igrave;nh thức mua sắm online đang ph&aacute;t triển mạnh mẽ như hiện tại th&igrave; sự hiện diện của Touch ID tr&ecirc;n b&agrave;n ph&iacute;m sẽ trở th&agrave;nh phương thức bảo mật nhanh gọn v&agrave; đ&aacute;ng tin cậy nhất khi ch&uacute;ng ta thanh to&aacute;n trực tuyến.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/NenMuaS6honNexus/Magic-keyboard-2021-touch-id-and-numeric-keypad-3.jpg"></p>', 4499000, 4799000, 4799000, 46, N'asset/img/images/phukien/banphim/trang1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">Kiểu kết nối</td>
<td>Bluetooth</td>
</tr>
<tr>
<td style="width: 140px;">Cổng giao tiếp</td>
<td>Lightning</td>
</tr>
<tr>
<td style="width: 140px;">T&iacute;nh năng</td>
<td>G&otilde; ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i, C&oacute; Numeric Keypad v&agrave; Touch ID tương th&iacute;ch Mac M1 (MacBook, iMac, Mac mini), T&iacute;ch hợp multimedia, Thời lượng pin khoảng 1 th&aacute;ng</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh tương th&iacute;ch</td>
<td>iPadOS, iOS, macOS</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 4)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (17, 20, N'Chuột Magic Mouse 2 2022', N'<p><strong>Magic Mouse 2 2022 chắc chắn l&agrave; con chuột tốt nhất m&agrave; Apple đ&atilde; ph&aacute;t h&agrave;nh. Sản phẩm t&iacute;ch hợp c&aacute;c cử chỉ, kết nối Bluetooth mạnh mẽ v&agrave; pin c&oacute; thể sạc lại. Đ&acirc;y sẽ l&agrave; một con&nbsp;<a href="https://fptshop.com.vn/phu-kien/chuot">chuột m&aacute;y t&iacute;nh</a>&nbsp;nổi bật tr&ecirc;n thị trường ở thời điểm hiện tại.</strong></p>
<h3><strong>Nhẹ hơn v&agrave; ph&ugrave; hợp cho tất cả mọi người</strong></h3>
<p><strong><img src="https://fptshop.com.vn/Uploads/images/2015/VuTT29/02-Magic-Mouse-2-2022-01.jpg"></strong></p>
<p><strong>Thiết kế của Magic Mouse 2 2022 kh&ocirc;ng thay đổi nhiều so với thế hệ trước. Đ&oacute; vẫn l&agrave; một con chuột hiện đại v&agrave; sang trọng với một bề mặt kh&ocirc;ng hề c&oacute; n&uacute;t bấm v&agrave; con lăn như c&aacute;c sản phẩm kh&aacute;c tr&ecirc;n thị trường. Tuy nhi&ecirc;n, Apple đ&atilde; tối ưu trọng lượng của con chuột n&agrave;y để gi&uacute;p n&oacute; trở n&ecirc;n nhẹ hơn, đảm bảo người d&ugrave;ng c&oacute; một trải nghiệm sử dụng thoải m&aacute;i hơn. Ngo&agrave;i ra, h&igrave;nh dạng của Magic Mouse 2 2022 cũng hỗ trợ cho người thuận tay tr&aacute;i chứ kh&ocirc;ng chỉ người thuận tay phải. Đ&acirc;y l&agrave; thứ m&agrave; bạn chắc chắn kh&ocirc;ng thể t&igrave;m thấy tr&ecirc;n nhiều con chuột của h&atilde;ng kh&aacute;c. </strong></p>
<h3><strong>Hỗ trợ c&aacute;c cử chỉ</strong></h3>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/VuTT29/02-Magic-Mouse-2-2022-02.jpg"></p>
<p>Điều m&agrave; bạn chắc chắn sẽ th&iacute;ch tr&ecirc;n Magic Mouse 2 2022 ch&iacute;nh l&agrave; những cử chỉ khiến bạn cảm thấy giống như đang sử dụng&nbsp;<a href="https://fptshop.com.vn/phu-kien/ban-di-chuot-magic-trackpad-2-2021">Magic TrackPad</a>&nbsp;vậy, ngoại trừ việc n&oacute; kh&ocirc;ng hỗ trợ Force Touch. Bạn c&oacute; thể thoải m&aacute;i vuốt giữa c&aacute;c trang web v&agrave; cuộn qua c&aacute;c t&agrave;i liệu m&agrave; kh&ocirc;ng gặp bất cứ kh&oacute; khăn n&agrave;o. Bản th&acirc;n chuột cũng phản hồi c&aacute;c cử chỉ được &aacute;p dụng cho một con chuột m&aacute;y t&iacute;nh th&ocirc;ng thường như nhấp chuột tr&aacute;i v&agrave; chuột phải nếu như bạn bật c&agrave;i đặt n&agrave;y ở trong macOS.</p>', 2690000, 2890000, 2890000, 43, N'asset/img/images/phukien/chuot/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">Loại chuột</td>
<td>Chuột kh&ocirc;ng d&acirc;y</td>
</tr>
<tr>
<td style="width: 140px;">Kiểu kết nối</td>
<td>Bluetooth</td>
</tr>
<tr>
<td style="width: 140px;">Thương hiệu</td>
<td>Apple</td>
</tr>
<tr>
<td style="width: 140px;">Xuất xứ</td>
<td>Trung Quốc</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 7)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (18, 10, N'Apple Watch Ultra GPS + Cellular 49mm viền Titanium, dây Alpine Loop Small', N'<p><strong>L&agrave; phi&ecirc;n bản bền bỉ nhất lịch sử d&ograve;ng Apple Watch, chiếc đồng hồ Apple Watch Ultra được chế t&aacute;c từ chất liệu Titanium đỉnh cao, sở hữu cơ chế GPS tần số k&eacute;p n&acirc;ng cấp v&agrave; c&oacute; thời lượng pin l&ecirc;n đến 36 giờ. Đặc biệt hơn, bộ quai đeo với ng&agrave;m G-hub d&agrave;nh cho vận động vi&ecirc;n sẽ đem lại cho bạn cảm nhận ho&agrave;n to&agrave;n mới.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Apple-watch-ultra-gps-cellular-1.jpg"></p>
<h3><strong>Sự kết hợp giữa Titanium v&agrave; Sapphire</strong></h3>
<p>Chưa từng c&oacute; mẫu Apple Watch n&agrave;o đạt đến độ bền v&agrave; sang trọng đỉnh cao như Apple Watch Ultra. Sản phẩm được trang bị khung vỏ chế t&aacute;c từ Titanium si&ecirc;u bền kết hợp với k&iacute;nh Sapphire sang trọng cứng c&aacute;p, tất cả tạo n&ecirc;n một chiếc đồng hồ mạnh mẽ m&agrave; vẫn cao cấp, kh&ocirc;ng ng&aacute;n ngại t&aacute;c động ti&ecirc;u cực từ m&ocirc;i trường.</p>
<p>Nhờ quy tr&igrave;nh ho&agrave;n thiện h&agrave;ng đầu thế giới, Apple Watch Ultra c&aacute;c ti&ecirc;u ch&iacute; h&agrave;ng đầu về độ bền như MIL-STD 810H (chuẩn qu&acirc;n đội Hoa Kỳ), chịu &aacute;p lực nước s&acirc;u 100 m&eacute;t v&agrave; ghi nhận khả năng chống bụi IP6X. Ngo&agrave;i ra, sản phẩm c&ograve;n sở hữu n&uacute;m xoay Digital Crown lớn hơn, dễ d&agrave;ng thao t&aacute;c.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Apple-watch-ultra-gps-cellular-2.jpg"></p>
<h3><strong>M&agrave;n h&igrave;nh 2000 nits chẳng ngại ng&agrave;y nắng</strong></h3>
<p>L&agrave; một chiếc đồng hồ d&agrave;nh cho những ai y&ecirc;u th&iacute;ch vận động ngo&agrave;i trời, Apple Watch Ultra đẩy độ s&aacute;ng tối đa l&ecirc;n 2000 nits, dễ d&agrave;ng hiển thị r&otilde; r&agrave;ng mọi th&ocirc;ng tin, m&agrave;u sắc, h&igrave;nh ảnh, th&ocirc;ng số dưới &aacute;nh nắng ch&oacute;i chang. Chuẩn m&agrave;n h&igrave;nh Retina độc quyền từ Apple sẽ đảm bảo đem đến chất lượng h&igrave;nh ảnh khiến bạn h&agrave;i l&ograve;ng.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/DuyLe/Windows%20Phone/Apple-watch-ultra-gps-cellular-3.jpg"></p>', 22990000, 25990000, 25990000, 49, N'asset/img/images/watch/Ultra/trang1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>1.92 inch, LTPO OLED, 502 x 410 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Chất liệu</td>
<td>Viền m&aacute;y: Titanium</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>watchOS</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh tương th&iacute;ch</td>
<td>iOS</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian sử dụng pin</td>
<td>36 giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thương hiệu</td>
<td>Apple</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (19, 11, N'Apple Watch Series 8 GPS + Cellular 41mm viền thép, dây thép', N'<p><strong>Sự kết hợp giữa khung vỏ th&eacute;p b&oacute;ng bẩy, d&acirc;y th&eacute;p sang trọng mềm mại v&agrave; ba m&agrave;u sắc sang trọng biến chiếc Apple Watch Series 8 bạn đang theo d&otilde;i th&agrave;nh một phụ kiện thời trang thực thụ. Tr&ecirc;n sản phẩm n&agrave;y, Apple đem đến rất nhiều c&ocirc;ng nghệ theo d&otilde;i sức khỏe đắc lực v&agrave; hỗ trợ thể thao tiện dụng.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/23/Apple-watch-series-8-cellular-vien-thep-day-thep-5.jpg"></p>
<h3><strong>Vỏ th&eacute;p cao cấp, quai đeo sang trọng</strong></h3>
<p>Kh&aacute;c với bản ti&ecirc;u chuẩn sử dụng khung nh&ocirc;m, biến thể Apple Watch Series 8 bạn đang theo d&otilde;i trang bị khung th&eacute;p s&aacute;ng b&oacute;ng được chế t&aacute;c tinh tế nhằm đảm bảo t&iacute;nh sang trọng của thiết bị. Mỗi chi tiết d&ugrave; l&agrave; nhỏ nhất tr&ecirc;n mặt đồng hồ, cạnh b&ecirc;n v&agrave; c&aacute;c ph&iacute;m vật l&yacute; đều được ch&uacute; trọng v&agrave;o t&iacute;nh ho&agrave;n thiện, cho thấy sự đầu tư chăm ch&uacute;t kỹ lưỡng của &ldquo;T&aacute;o khuyết&rdquo; d&agrave;nh cho sản phẩm cao cấp n&agrave;y.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/23/Apple-watch-series-8-cellular-vien-thep-day-thep-b.jpg"></p>
<h3><strong>Quai th&eacute;p đẳng cấp m&agrave; vẫn mềm mại</strong></h3>
<p>Apple Watch Series 8 phi&ecirc;n bản viền th&eacute;p d&acirc;y th&eacute;p sử dụng quai đeo kim loại được chế t&aacute;c tỉ mỉ, đan bện từ v&ocirc; số mắt x&iacute;ch si&ecirc;u nhỏ, vừa chắc chắn, vừa vững v&agrave;ng m&agrave; vẫn &ocirc;m tay v&agrave; thoải m&aacute;i khi chơi thể thao hoặc vận động mạnh. C&aacute;c phi&ecirc;n bản m&agrave;u của sản phẩm được lựa chọn kỹ lưỡng để thể hiện r&otilde; r&agrave;ng sắc th&aacute;i cao cấp m&agrave; Apple Watch Series 8 phi&ecirc;n bản viền th&eacute;p d&acirc;y th&eacute;p theo đuổi.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/AnhNQ/23/Apple-watch-series-8-cellular-vien-thep-day-thep-e.jpg"></p>', 20990000, 25990000, 25990000, 47, N'asset/img/images/watch/Series_8/thep_thep/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>1.9 inch, Retina, 484 x 396 Pixels</td>
</tr>
<tr>
<td style="width: 140px;">Chất liệu</td>
<td>Viền m&aacute;y: Th&eacute;p kh&ocirc;ng gỉ</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>watchOS</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh tương th&iacute;ch</td>
<td>iOS</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian sử dụng pin</td>
<td>18 giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thương hiệu</td>
<td>Apple</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (20, 13, N'Apple Watch SE 2 GPS + Cellular 40mm viền nhôm dây cao su', N'<p><strong>Với gi&aacute; b&aacute;n phải chăng, thiết kế trẻ trung v&agrave; khả năng theo d&otilde;i sức khỏe người d&ugrave;ng hiệu quả, chiếc đồng hồ Apple Watch SE 2 l&agrave; c&ocirc;ng cụ tuyệt vời để bạn t&ocirc; điểm gu thời trang thường ng&agrave;y v&agrave; tạo sự kết nối s&acirc;u sắc hơn với ch&iacute;nh bản th&acirc;n m&igrave;nh.</strong></p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/Apple-Watch-SE-2-25.jpg"></p>
<h3><strong>Tự tin kh&aacute;m ph&aacute;, kết nối linh hoạt</strong></h3>
<p>Nhờ cơ chế hỗ trợ eSIM v&agrave; vận h&agrave;nh tương th&iacute;ch mạng 4G, Apple Watch SE 2 phi&ecirc;n bản GPS + Cellular sẽ gi&uacute;p bạn lu&ocirc;n b&aacute;m s&aacute;t c&aacute;c th&ocirc;ng tin diễn ra li&ecirc;n tục trong cuộc sống, chủ động nhận/thực hiện cuộc gọi v&agrave; phản hồi SMS nhanh ch&oacute;ng, tiện dụng. Tr&ecirc;n sản phẩm n&agrave;y, bạn sẽ t&igrave;m thấy nhiều t&iacute;nh năng hữu dụng như định hướng bản đồ hay gọi trợ l&yacute; ảo Siri.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/Apple-Watch-SE-2-18.jpg"></p>
<h3><strong>Phong c&aacute;ch năng động của chiếc smartwatch trẻ trung</strong></h3>
<p>Apple Watch SE 2 l&agrave; đại diện cho đời sống năng động của những người d&ugrave;ng trẻ. Th&ocirc;ng qua c&aacute;c tone m&agrave;u lịch l&atilde;m tươi s&aacute;ng như Đen, V&agrave;ng v&agrave; Bạc, &ldquo;T&aacute;o khuyết&rdquo; gửi gắm tinh thần thể thao v&agrave; vận động kh&ocirc;ng ngừng nghỉ. 100% cấu tr&uacute;c khung vỏ của sản phẩm đều được chế tạo từ chất liệu nh&ocirc;m t&aacute;i chế ho&agrave;n to&agrave;n, vừa giảm thiểu ph&aacute;t thải kh&iacute; carbon, vừa th&acirc;n thiện tr&ecirc;n tay người d&ugrave;ng.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/Apple-Watch-SE-2-36.jpg"></p>
<h3><strong>Đem đến nhiều sự hỗ trợ trong cuộc sống</strong></h3>
<p>Hệ thống t&iacute;nh năng của Apple Watch SE 2 Cellular sẽ trợ gi&uacute;p rất nhiều cho đời sống thường ng&agrave;y của bạn. Bạn c&oacute; thể sử dụng sản phẩm như một bản đồ xem đường tiện lợi, kết nối để theo d&otilde;i h&igrave;nh ảnh quay chụp từ iPhone, theo d&otilde;i c&aacute;c tiến tr&igrave;nh của chu kỳ kinh nguyệt với c&aacute;c bạn nữ v&agrave; nhận cảnh b&aacute;o nếu tiếng ồn xung quanh c&oacute; thể t&aacute;c động xấu đến đời sống sức khỏe của bạn.</p>
<p><img src="https://fptshop.com.vn/Uploads/images/2015/0511/Apple-Watch-SE-2-37.jpg"></p>', 8490000, 8790000, 8790000, 43, N'asset/img/images/watch/SE/nhom_caosu/den1.webp', N'<table style="width: 524px;">
<tbody>
<tr>
<td style="width: 140px;">M&agrave;n h&igrave;nh</td>
<td>1.56 inch, Retina</td>
</tr>
<tr>
<td style="width: 140px;">Chất liệu</td>
<td>Nh&ocirc;m</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh</td>
<td>watchOS</td>
</tr>
<tr>
<td style="width: 140px;">Hệ điều h&agrave;nh tương th&iacute;ch</td>
<td>iOS</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian sử dụng pin</td>
<td>18 giờ</td>
</tr>
<tr>
<td style="width: 140px;">Thương hiệu</td>
<td>Apple</td>
</tr>
<tr>
<td style="width: 140px;">Thời gian bảo h&agrave;nh (th&aacute;ng)</td>
<td>12</td>
</tr>
</tbody>
</table>', 0, 5)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (1, N'Chưa xác nhận')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (4, N'Đã nhận hàng')
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
GO
ALTER TABLE [dbo].[AnhSanPham]  WITH CHECK ADD  CONSTRAINT [FK__AnhSanPham__MaSP__398D8EEE] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[AnhSanPham] CHECK CONSTRAINT [FK__AnhSanPham__MaSP__398D8EEE]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaDH__38996AB5] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaDH__38996AB5]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaSP__3B75D760] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaSP__3B75D760]
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaGH__4AB81AF0] FOREIGN KEY([MaGH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaGH__4AB81AF0]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaTrang__3B75D760] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaTrang__3B75D760]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaDM__403A8C7D] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaDM__403A8C7D]
GO
USE [master]
GO
ALTER DATABASE [AppleStore4] SET  READ_WRITE 
GO
