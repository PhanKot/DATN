USE [master]
GO
/****** Object:  Database [WebBaiGiang_CKC]    Script Date: 3/21/2024 5:05:17 PM ******/
CREATE DATABASE [WebBaiGiang_CKC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBaiGiang_CKC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\WebBaiGiang_CKC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBaiGiang_CKC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\WebBaiGiang_CKC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebBaiGiang_CKC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBaiGiang_CKC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET  MULTI_USER 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBaiGiang_CKC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBaiGiang_CKC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBaiGiang_CKC] SET QUERY_STORE = OFF
GO
USE [WebBaiGiang_CKC]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bai]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bai](
	[BaiId] [int] IDENTITY(1,1) NOT NULL,
	[ChuongId] [int] NOT NULL,
	[TenBai] [nvarchar](max) NOT NULL,
	[SoBai] [int] NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Bai] PRIMARY KEY CLUSTERED 
(
	[BaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiLam]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiLam](
	[BaiLamId] [int] IDENTITY(1,1) NOT NULL,
	[MSSV] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[SoCauDung] [int] NULL,
	[Diem] [real] NULL,
	[ThoiGianBatDau] [datetime2](7) NULL,
	[ThoiGianDenHan] [datetime2](7) NULL,
 CONSTRAINT [PK_BaiLam] PRIMARY KEY CLUSTERED 
(
	[BaiLamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[CauHoiId] [int] IDENTITY(1,1) NOT NULL,
	[ChuongId] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[DapAnA] [nvarchar](max) NULL,
	[DapAnB] [nvarchar](max) NULL,
	[DapAnC] [nvarchar](max) NULL,
	[DapAnD] [nvarchar](max) NULL,
	[DapAnDung] [nvarchar](max) NULL,
	[DoKho] [real] NOT NULL,
	[SoLanLay] [int] NULL,
	[SoLanTraLoiDung] [int] NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[CauHoiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi_BaiLam]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi_BaiLam](
	[CauHoi_BaiLamId] [int] IDENTITY(1,1) NOT NULL,
	[BaiLamId] [int] NOT NULL,
	[CauHoi_DeId] [int] NOT NULL,
	[DapAnSVChon] [nvarchar](max) NULL,
 CONSTRAINT [PK_CauHoi_BaiLam] PRIMARY KEY CLUSTERED 
(
	[CauHoi_BaiLamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi_De]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi_De](
	[CauHoi_DeId] [int] IDENTITY(1,1) NOT NULL,
	[CauHoiId] [int] NOT NULL,
	[DeId] [int] NOT NULL,
 CONSTRAINT [PK_CauHoi_De] PRIMARY KEY CLUSTERED 
(
	[CauHoi_DeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chuong]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuong](
	[ChuongId] [int] NOT NULL,
	[TenChuong] [nvarchar](max) NOT NULL,
	[MonHocId] [int] NOT NULL,
 CONSTRAINT [PK_Chuong] PRIMARY KEY CLUSTERED 
(
	[ChuongId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachThi]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachThi](
	[DanhSachThiId] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoanId] [int] NOT NULL,
	[KyKiemTraId] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_DanhSachThi] PRIMARY KEY CLUSTERED 
(
	[DanhSachThiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[De]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[De](
	[DeId] [int] IDENTITY(1,1) NOT NULL,
	[KyKiemTraId] [int] NOT NULL,
	[SoCauHoi] [int] NOT NULL,
	[DoKhoDe] [real] NOT NULL,
 CONSTRAINT [PK_De] PRIMARY KEY CLUSTERED 
(
	[DeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[IsGiaoVien] [bit] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyKiemTra]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyKiemTra](
	[KyKiemTraId] [int] IDENTITY(1,1) NOT NULL,
	[TenKyKiemTra] [nvarchar](max) NOT NULL,
	[ThoiGianBatDau] [datetime2](7) NOT NULL,
	[ThoiGianKetThuc] [datetime2](7) NOT NULL,
	[ThoiGianLamBai] [int] NOT NULL,
 CONSTRAINT [PK_KyKiemTra] PRIMARY KEY CLUSTERED 
(
	[KyKiemTraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MonHocId] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](max) NOT NULL,
	[MaMonHoc] [nvarchar](max) NOT NULL,
	[MoTa] [ntext] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MonHocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muc]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muc](
	[MucId] [int] IDENTITY(1,1) NOT NULL,
	[TenMuc] [nvarchar](max) NOT NULL,
	[BaiId] [int] NOT NULL,
	[MucSo] [int] NOT NULL,
	[NoiDung] [ntext] NOT NULL,
 CONSTRAINT [PK_Muc] PRIMARY KEY CLUSTERED 
(
	[MucId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/21/2024 5:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoanId] [int] IDENTITY(1,1) NOT NULL,
	[MSSV] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230622142312_baigiangckc', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230622191733_baigiangckc1', N'6.0.18')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230622192054_baigiangckc2', N'6.0.18')
GO
SET IDENTITY_INSERT [dbo].[Bai] ON 

INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (2, 1, N'Cài đặt, tạo dự án, dịch và chạy ứng dụng ASP.NET Core', 1, N'<p>Ứng dụng ASP.NET Core có thể được phát triển (và hoạt động) trên cả Windows, Linux và macOS. Để thực thi ứng dụng, bạn cần cài đặt .NET Core runtime; Để phát triển ứng dụng, bạn cần cài đặt .NET Core SDK. Ngoài ra bạn cũng cần một công cụ hỗ trợ bạn viết code – biên dịch mã – debug.</p><p>Trong bài học này chúng ta sẽ cùng cài đặt runtime, SDK, IDE, và các công cụ hỗ trợ cho việc phát triển ứng dụng ASP.NET Core. Do việc cài đặt phụ thuộc vào hệ điều hành bạn sử dụng, trong bài học này chúng ta sẽ tập trung giới thiệu cách cài đặt cho Windows.</p><p><img src="https://localhost:7258/contents/GioiThieu/11111.png" style="width: 750px;"><br></p>')
INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (3, 1, N'Cấu trúc ASP.NET Core', 5, N'<p><span style="font-size: 14.4px;">Nếu bạn mới bắt đầu với Asp.net Core và tìm kiếm thông tin trên Internet, bạn có thể sẽ cảm thấy rất hoang mang vì có quá nhiều nội dung khác nhau. Vấn đề là, Asp.net Core là một hệ thống phức tạp dành cho phát triển nhiều loại ứng dụng khác nhau hoạt động trên web. Do vậy, Asp.net Core bao gồm nhiều thành phần với vai trò khác nhau nhưng tương tác trong một khuôn khổ chung. Việc tìm hiểu cấu trúc Asp.net Core sẽ cho bạn cái nhìn tổng thể giúp định hình những gì sẽ học về sau, cũng như mối quan hệ giữa chúng.</span><br></p>')
INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (4, 1, N'Cách hoạt động của ứng dụng ASP.NET Core', 3, N'<p><font color="#222222" face="Verdana, BlinkMacSystemFont, -apple-system, segoe ui, Roboto, Oxygen, Ubuntu, Cantarell, open sans, helvetica neue, sans-serif"><span style="font-size: 15px;">Ứng dụng ASP.NET Core có cách thức hoạt động khác biệt với ứng dụng ASP.NET truyền thống cũng nhưng các loại ứng dụng web xây dựng trên các nền tảng khác. Sự khác biệt này giúp ứng dụng ASP.NET Core hoạt động đa nền tảng, hiệu quả và an toàn hơn.</span></font><br></p>')
INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (5, 1, N'Cấu trúc dự án, cấu hình ứng dụng, middleware trong ASP.NET Core', 4, N'<p><font color="#222222" face="Verdana, BlinkMacSystemFont, -apple-system, segoe ui, Roboto, Oxygen, Ubuntu, Cantarell, open sans, helvetica neue, sans-serif"><span style="font-size: 15px;">Cấu trúc dự án là cách thức bố trí và ý nghĩa của từng thành phần của dự án (project) ASP.NET Core. Cấu trúc dự án có liên quan mật thiết đến cách thức cấu hình cho ứng dụng. So với ASP.NET, cấu trúc và cấu hình dự án ASP.NET Core có nhiều điểm khác biệt. Bạn phải nắm rõ các vấn đề này trước khi đi vào viết code.</span></font><br></p>')
INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (8, 3, N'Controller trong ASP.NET Core MVC', 6, N'<p><span style="color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;segoe ui&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;open sans&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);">Controller trong ASP.NET Core MVC là thành phần được xây dựng tương đối tự do. Bất kỳ class nào thỏa mãn một số tiêu đơn giản đều có thể trở thành controller trong ASP.NET Core MVC. Mvc Middleware sử dụng cơ chế reflection để tự động hóa việc phát hiện – khởi tạo – sử dụng controller.</span><br></p>')
INSERT [dbo].[Bai] ([BaiId], [ChuongId], [TenBai], [SoBai], [MoTa]) VALUES (9, 4, N'View trong ASP.NET Core MVC, layout, viewstart, viewimports', 7, N'<p><span style="color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;segoe ui&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;open sans&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);">Trong mô tả chung của mẫu kiến trúc MVC, view là thành phần chịu trách nhiệm sinh ra giao diện cho ứng dụng. Đây là khâu cuối cùng trong chuỗi xử lý yêu cầu của người dùng trước khi trả lại kết quả.</span></p><p><span style="color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;segoe ui&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;open sans&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);">Tuy nhiên, mỗi framework khi thực thi MVC lại diễn đạt view và mối quan hệ giữa nó với các thành phần khác theo cách riêng. Chúng ta xem xét view trong quan hệ với các thành phần còn lại của MVC trong ASP.NET Core MVC.</span><br></p>')
SET IDENTITY_INSERT [dbo].[Bai] OFF
GO
SET IDENTITY_INSERT [dbo].[BaiLam] ON 

INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (88, N'0306201451', N'Nguyễn Chí Khang', 0, 0, CAST(N'2023-07-08T22:04:02.0000000' AS DateTime2), CAST(N'2023-07-08T22:19:02.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (89, N'0306201457', N'Trúc Phạm', 0, 0, CAST(N'2023-07-08T22:34:37.0000000' AS DateTime2), CAST(N'2023-07-08T22:49:37.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (90, N'2019605729', N'Phan Bắc', 4, 4, CAST(N'2024-02-27T12:42:29.0000000' AS DateTime2), CAST(N'2024-02-27T12:57:29.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (91, N'2019605729', N'Phan Bắc', 1, 1, CAST(N'2024-02-28T17:22:33.0000000' AS DateTime2), CAST(N'2024-02-28T17:37:33.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (92, N'2019605234', N'Lê Mạnh Cường', 0, 0, CAST(N'2024-02-28T20:56:09.0000000' AS DateTime2), CAST(N'2024-02-28T21:11:09.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (93, N'2019605354', N'Trần Huy Phú', 6, 4, CAST(N'2024-02-28T20:58:06.0000000' AS DateTime2), CAST(N'2024-02-28T21:13:06.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (94, N'2019605729', N'Phan Bắc', 2, 0.5, CAST(N'2024-03-02T11:55:03.0000000' AS DateTime2), CAST(N'2024-03-02T12:40:03.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (95, N'123', N'Phan Tiên', 1, 0.25, CAST(N'2024-03-02T12:06:07.0000000' AS DateTime2), CAST(N'2024-03-02T12:51:07.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (96, N'2019605256', N'Nguyễn Thế Đạt', 7, 1.75, CAST(N'2024-03-02T12:27:27.0000000' AS DateTime2), CAST(N'2024-03-02T13:12:27.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (97, N'2019605729', N'Phan Bắc', 9, 4.5, CAST(N'2024-03-02T12:32:02.0000000' AS DateTime2), CAST(N'2024-03-02T13:17:02.0000000' AS DateTime2))
INSERT [dbo].[BaiLam] ([BaiLamId], [MSSV], [HoTen], [SoCauDung], [Diem], [ThoiGianBatDau], [ThoiGianDenHan]) VALUES (98, N'2019605620', N'Phan Ánh Tuyết', 0, 0, CAST(N'2024-03-09T16:43:42.0000000' AS DateTime2), CAST(N'2024-03-09T17:28:42.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[BaiLam] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (1, 1, N'Controller trong ASP.NET Core MVC 6 là gì?', N'Một thành phần của HTML để hiển thị dữ liệu
', N'Một lớp để xử lý các yêu cầu HTTP đến', N'Một bảng cơ sở dữ liệu để lưu trữ thông tin người dùng', N'Một tệp CSS để thiết kế trang web', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (2, 1, N'Chức năng chính của một Controller là gì?', N'Xử lý các yêu cầu HTTP đến và trả về các phản hồi tương ứng', N'Lưu trữ dữ liệu người dùng trong cơ sở dữ liệu', N'Hiển thị dữ liệu lên các trang web', N'Thiết kế giao diện người dùng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (3, 1, N'Làm thế nào để tạo một Controller trong ASP.NET Core MVC 6?', N'Sử dụng trình tạo mã tự động của Visual Studio', N'Tạo một lớp mới và kế thừa từ lớp ControllerBase', N'Sử dụng các lệnh lập trình để tạo mới', N'Sử dụng các công cụ kéo và thả để tạo mới', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (4, 1, N'Controller trong ASP.NET Core MVC 6 được kế thừa từ lớp nào?', N'Controller', N'ControllerBase', N'DbContext', N'ViewResult', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (5, 1, N'Những phương thức HTTP nào có thể được xử lý bởi một Controller trong ASP.NET Core MVC 6?', N'GET ', N'POST', N'PUT', N'Tất cả các phương thức trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (6, 1, N'Có bao nhiêu phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Không giới hạn', N'Chỉ có một phương thức Action duy nhất', N'Phải có ít nhất hai phương thức Action', N'Tùy thuộc vào yêu cầu của ứng dụng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (7, 1, N'Phương thức nào được sử dụng để xử lý yêu cầu HTTP GET trong một Controller trong ASP.NET Core MVC 6?', N'OnGet()', N'OnGetAsync()', N'Get()', N'None of the above', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (8, 1, N'Phương thức nào được sử dụng để xử lý yêu cầu HTTP POST trong một Controller trong ASP.NET Core MVC 6?', N'OnGet()', N'OnGetAsync()', N'Post()', N'None of the above', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (9, 1, N'Làm thế nào để truyền tham số cho một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng query string', N'Sử dụng route parameter', N'Sử dụng form data', N'Sử dụng session', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (10, 1, N'Làm thế nào để trả về một View từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N' Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'Sử dụng phương thức RedirectToAction()', N'Sử dụng phương thức RedirectToRoute()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (11, 1, N'Làm thế nào để trả về một JSON từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức Json()', N'Sử dụng phương thức Content()', N'Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (12, 1, N'Làm thế nào để trả về một File từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'Sử dụng phương thức File()', N'Sử dụng phương thức RedirectToAction()', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (13, 1, N'Làm thế nào để truy cập các tham số Form trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số Form', N'Sử dụng tham số ActionContext', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (14, 1, N'Làm thế nào để truy cập các tham số Route trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số Form', N'Sử dụng tham số ActionContext', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (15, 1, N'Làm thếnào để truy cập các tham số Query trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N' Sử dụng tham số Request', N' Sử dụng tham số QueryString', N'Sử dụng tham số ActionContext', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (16, 1, N'Làm thế nào để truy cập các tham số Session trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N' Sử dụng tham số Request', N'Sử dụng tham số Session', N'Sử dụng tham số ActionContext', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (17, 1, N'Làm thế nào để xử lý các lỗi trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng try-catch block trong phương thức Action', N'Sử dụng các middleware xử lý lỗi', N'Sử dụng phương thức OnException() trong Controller', N' Sử dụng tất cả các phương án trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (18, 1, N'Làm thế nào để tránh các tấn công CSRF trong một Controller trong ASP.NET CoreMVC 6?', N' Sử dụng các token CSRF để xác thực yêu cầu', N' Sử dụng các middleware bảo mật để ngăn chặn tấn công', N'Sử dụng phương thức ValidateAntiForgeryToken trong các phương thức Action', N' Sử dụng tất cả các phương án trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (19, 1, N'Làm thế nào để xác định các thành phần khác trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng Dependency Injection để inject các thành phần vào Controller', N' Sử dụng các phương thức Action để xử lý các thành phần khác', N'Sử dụng các middleware để quản lý các thành phần khác', N'Sử dụng tất cả các phương án trên', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (20, 1, N'Làm thế nào để định cấu hình một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức AddMvc() trong phương thức ConfigureServices() của Startup.cs', N'Sử dụng phương thức UseMvc() trong phương thức Configure() của Startup.cs', N'Sử dụng phương thứcConfigureServices() để đăng ký các dependency', N'Sử dụng phương thức Configure() để định cấu hình routing cho Controller.', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (41, 3, N'Routing là gì trong ASP.NET Core MVC 6?', N'Cơ chế điều hướng các yêu cầu HTTP đến các Controller và Action tương ứng', N'Cơ chế lưu trữ các thông tin người dùng', N'Cơ chế xử lý các yêu cầu HTTP', N'Cơ chế tạo ra các Views', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (42, 3, N'Các thành phần chính của Routing là gì trong ASP.NET Core MVC 6?', N'Route Template và Route Handler', N'Route Table và Route Handler', N'Route Table và Route Middleware', N'Route Template và Route Middleware', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (43, 3, N'Để định nghĩa một Route trong ASP.NET Core MVC 6, ta sử dụng gì?', N'Phương thức MapRoute()', N' Phương thức UseRouting()', N'Phương thức UseEndpoints()', N'Cả ba phương thức trên', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (44, 3, N'Route Template là gì trong ASP.NET Core MVC 6?', N'Một chuỗi định dạng để so khớp với các yêu cầu HTTP đến', N'Một tệp lưu trữ các thông tin về Routing', N'Một lớp để xử lý các yêu cầu HTTP đến', N'Một bảng cơ sở dữ liệu để lưu trữ thông tin người dùng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (45, 3, N'Khi một yêu cầu HTTP đến, ASP.NET Core MVC 6 sẽ so khớp nó với Route nào?
', N'Route đầu tiên được khớp với yêu cầu', N' Route cuối cùng được khớp với yêu cầu', N' Route có Route Template phù hợp nhất với yêu cầu', N'Route có Route Handler phù hợp nhất với yêu cầu', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (46, 3, N'Để định nghĩa một Route với nhiều Route Templates, ta sử dụng gì trong ASP.NET Core MVC 6?', N'Phương thức MapRoute()', N'Phương thức Map()', N'Phương thức MapGet()', N'Phương thức MapPost()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (47, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: {id:int}', N'Sử dụng dấu ngoặc vuông [] để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [id:int]', N'Sử dụng dấu ngoặc nhọn {} để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: {id}?int', N'Sử dụng dấu ngoặc vuông [] để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [id]?int', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (48, 3, N'Route Constraint là gì trong ASP.NET Core MVC 6?', N'Một điều kiện được áp dụng lên Route Parameter để xác định giá trị hợp lệ cho Parameter được truyền vào Route', N'Một tài nguyên được sử dụng trong quá trình Route
', N'Một phương thức được sử dụng để xử lý các yêu cầu HTTP đến', N'Một lớp để lưu trữ các thông tin về Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (49, 3, N'Làm thế nào để định nghĩa một Route với một Route Name trong ASP.NET Core MVC 6?', N'Sử dụng thuộc tính Name của phương thức MapRoute()', N'Sử dụng phương thức WithName() của đối tượng RouteBuilder', N'Sử dụng phương thức Map() và đối tượng RouteAttribute để định nghĩa Route Name', N'Không thể định nghĩa Route Name trong ASP.NET Core MVC 6', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (50, 3, N'Làm thế nào để tạo ra một URL từ một Route trong ASP.NET Core MVC 6?', N'Sử dụng phương thức GenerateUrl() của đối tượng UrlHelper', N'Sử dụng phương thức Generate() của đối tượng RouteBuilder', N'Sử dụng phương thức MapUrl() củađối tượng RouteBuilder', N'Sử dụng phương thức GetUrl() của đối tượng HttpContext', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (51, 3, N'Làm thế nào để sử dụng các Query String trong một Route trong ASP.NET Core MVC 6?', N'Sử dụng dấu hỏi chấm (?) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu gạch chéo (/) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu mở ngoặc nhọn ({) và định nghĩa các Query Parameter trong Route Template', N'Không thể sử dụng các Query String trong một Route trong ASP.NET Core MVC 6', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (52, 3, N'Làm thế nào để sử dụng các Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng phương thức MapRoute() và truyền vào một Attribute Route Template', N'Sử dụng thuộc tính RouteAttribute trên các Action trong Controller', N'Sử dụng phương thức UseAttributeRouting() trong phương thức Configure() của Startup.cs', N'Cả ba phương thức trên đềuđúng', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (53, 3, N'Khi sử dụng Attribute Routing trong ASP.NET Core MVC 6, ta có thể định nghĩa các Route Template như thế nào?', N'Bằng cách sử dụng thuộc tính RouteAttribute trên các Action trong Controller', N'Bằng cách sử dụng phương thức MapRoute() và truyền vào một Attribute Route Template', N'Bằng cách sử dụng phương thức Map() và truyền vào một Attribute Route Template', N'Không thể định nghĩa các Route Template khi sử dụng Attribute Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (54, 3, N'Làm thế nào để định nghĩa các Route Parameter khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng các dấu ngoặc nhọn {} và đặt tên cho Route Parameter, ví dụ: [Route("/api/{id}")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, ví dụ: [Route("/api/[id]")]', N'Sử dụng các dấu ngoặc vuông [] và đặt têncho Route Parameter, sau đó sử dụng thuộc tính [FromRoute] trong tham số của Action, ví dụ: [Route("/api/{id}")] public ActionResult GetItem([FromRoute] int id)', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó sử dụng thuộc tính [FromBody] trong tham số của Action, ví dụ: [Route("/api/[id]")] public ActionResult GetItem([FromBody] int id)', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (55, 3, N'Làm thế nào để định nghĩa các Route Constraint khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng các dấu ngoặc nhọn {} và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N'tất cả các đáp án trên ', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (56, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/{id}?int")]', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (57, 3, N'Làm thế nào để định nghĩa một Route với một Route Name trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng thuộc tính Name của thuộc tính RouteAttribute', N'Sử dụng phương thức WithName() của đối tượng RouteBuilder', N'Sử dụng phương thức Name() của thuộc tính RouteAttribute', N'Không thể định nghĩa Route Name trong Attribute Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (58, 3, N'Làm thế nào để tạo ra một URL từ một Route trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng phương thức GenerateUrl() của đối tượng UrlHelper', N'Sử dụng phương thức GenerateUrl() của đối tượng LinkGenerator', N'Sử dụng phương thức Generate() của đối tượng RouteBuilder', N'Sử dụng phương thức GenerateUrl() của đối tượng HttpContext', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (59, 3, N'Làm thế nào để sử dụng các Query String trong một Route trong Attribute Routing trong ASP.NET Core MVC 6?', N' Sử dụng dấu hỏi chấm (?) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu gạch chéo (/) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu mở ngoặc nhọn ({) và định nghĩa các Query Parameter trong Route Template', N'Không thể sử dụng các Query String trong một Route khi sử dụng Attribute Routing trong ASP.NET Core MVC 6', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (60, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng dấu ngoặc vung [] và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N' Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/{id}?int")]', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (61, 4, N'Trong mô hình MVC, Model đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả A, C', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (62, 4, N'Trong mô hình MVC, View đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả A, B', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (63, 4, N'Trong mô hình MVC, Controller đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả B, C', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (64, 4, N'Entity Framework là gì?', N'Một thư viện ORM (Object-Relational Mapping)', N'Mộtthư viện xử lý báo cáo', N'Một thư viện xử lý tệp', N'Cả A, B, C', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (65, 4, N'Trong Entity Framework, DbContext làm gì?', N'Làm việc với cơ sở dữ liệu và thực hiện các thao tác CRUD', N'Quản lý giao diện người dùng', N'Xử lý các yêu cầu HTTP', N'Cả A, B, C', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (66, 4, N'Trong Entity Framework, DbSet đại diện cho gì?', N'Một bảng trong cơ sở dữ liệu', N'Một trường trong cơ sở dữ liệu', N'Một khóa ngoại trong cơ sở dữ liệu', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (67, 4, N'Trong Entity Framework, thuộc tính [Key] được sử dụng để làm gì?', N'Xác định trường khóa chính của một bảng', N'Xác định trường khóa ngoại của một bảng', N'Xác định trường tên của một bảng', N'Xác định trường mô tả của một bảng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (68, 4, N'Trong Entity Framework, thuộc tính [ForeignKey] được sử dụng để làm gì?', N'Xác định trường khóa chính của một bảng', N'Xác định trường khóa ngoại của một bảng', N'Xác định trường tên của một bảng', N'Xác định trường mô tả của một bảng', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (69, 4, N'Trong ASP.NET Core 6, để sử dụng Entity Framework, chúng ta cần thêm gói nào vào project?', N'Microsoft.EntityFrameworkCore', N'Microsoft.AspNetCore.Mvc', N'Microsoft.AspNetCore.Identity', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (70, 4, N'Trong ASP.NET Core 6, chúng ta có thể sử dụng Entity Framework với các cơ sở dữ liệu nào?', N'SQL Server, MySQL, PostgreSQL, SQLite, Oracle', N'SQL Server, MySQL, PostgreSQL, SQLite', N'SQL Server, MySQL, Oracle', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (71, 4, N'Trong ASP.NET Core 6, để tạo một DbContext mới, chúng ta cần kế thừa từ lớp nào?
', N'DbContext', N'IdentityDbContext', N' ControllerBase', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (72, 4, N'Trong ASP.NET Core 6, để đăng ký DbContext với DI (Dependency Injection), chúng ta sử dụng phương thức nào trong ConfigureServices?', N'AddDbContext', N' AddControllers', N'AddMvc', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (73, 4, N'Trong ASP.NET Core 6, để tạo một bảng mới trong cơ sở dữ liệu, chúng ta cần làm gì?', N'Tạo một lớp Entity mới và thêm nó vào DbContext', N'Tạo một lớp Controller mới và thêm nó vào DbContext', N'Tạo một lớp View mới và thêm nó vào DbContext', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (74, 4, N'Trong ASP.NET Core 6, để tạo một bản ghi mới trong cơ sở dữ liệu, chúng ta cần làm gì?', N'Tạo một đối tượng Entity mới và thêm nó vào DbSet', N'Tạo một đối tượng Controller mới và thêm nó vào DbSet', N'Tạo một đối tượng View mới và thêm nó vào DbSet
', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (75, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy tất cả các bản ghi từ một bảng trong cơ sở dữ liệu, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Add()', N'DbSet<T>.All()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (76, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy một bản ghi từ một bảng trong cơ sở dữ liệu dựa trên khoá chính, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Add()', N'DbSet<T>.Single()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (77, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy các bản ghi từ một bảng trong cơ sở dữ liệu dựa trên một điều kiện, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Where()', N'DbSet<T>.Filter()', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (78, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy một bản ghi từ một bảng trong cơ sở dữ liệu dựa trên một điều kiện, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.First()', N'DbSet<T>.FirstOrDefault()', N'DbSet<T>.Single()', N'DbSet<T>.SingleOrDefault()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (79, 4, N'Trong ASP.NET Core 6, để thêm một bản ghi mới vào cơ sở dữ liệu, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.Add()', N'DbSet<T>.Update()', N'DbSet<T>.Remove()', N'DbSet<T>.Attach()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (80, 4, N'Trong ASP.NET Core 6, để lưu các thay đổi vào cơ sở dữ liệu, chúng ta dùng phương thức nào của DbContext?', N'DbContext.SaveChanges()', N'DbContext.Add()', N'DbContext.Update()', N'DbContext.Remove()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (81, 1, N'Đâu là tên gói NuGet chứa các lớp cơ bản của ASP.NET Core??<p><span style="font-size: 14.4px;text-align:center"><br></span></p><ol><li style="text-align: center; "><img src="https://localhost:7258/contents/GioiThieu/cauhoi.png" style="width: 359px;"><br></li></ol>', N'Microsoft.AspNetCore.Mvc', N'Microsoft.AspNetCore.Http', N'Microsoft.AspNetCore.Hosting', N'Microsoft.AspNetCore.Builder', N'B', 1, NULL, NULL)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (82, 1, N'Controller trong ASP.NET Core MVC 6 là gì?', N'Một thành phần của HTML để hiển thị dữ liệu
', N'Một lớp để xử lý các yêu cầu HTTP đến', N'Một bảng cơ sở dữ liệu để lưu trữ thông tin người dùng', N'Một tệp CSS để thiết kế trang web', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (83, 1, N'Chức năng chính của một Controller là gì?', N'Xử lý các yêu cầu HTTP đến và trả về các phản hồi tương ứng', N'Lưu trữ dữ liệu người dùng trong cơ sở dữ liệu', N'Hiển thị dữ liệu lên các trang web', N'Thiết kế giao diện người dùng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (84, 1, N'Làm thế nào để tạo một Controller trong ASP.NET Core MVC 6?', N'Sử dụng trình tạo mã tự động của Visual Studio', N'Tạo một lớp mới và kế thừa từ lớp ControllerBase', N'Sử dụng các lệnh lập trình để tạo mới', N'Sử dụng các công cụ kéo và thả để tạo mới', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (85, 1, N'Controller trong ASP.NET Core MVC 6 được kế thừa từ lớp nào?', N'Controller', N'ControllerBase', N'DbContext', N'ViewResult', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (86, 1, N'Những phương thức HTTP nào có thể được xử lý bởi một Controller trong ASP.NET Core MVC 6?', N'GET ', N'POST', N'PUT', N'Tất cả các phương thức trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (87, 1, N'Có bao nhiêu phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Không giới hạn', N'Chỉ có một phương thức Action duy nhất', N'Phải có ít nhất hai phương thức Action', N'Tùy thuộc vào yêu cầu của ứng dụng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (88, 1, N'Phương thức nào được sử dụng để xử lý yêu cầu HTTP GET trong một Controller trong ASP.NET Core MVC 6?', N'OnGet()', N'OnGetAsync()', N'Get()', N'None of the above', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (89, 1, N'Phương thức nào được sử dụng để xử lý yêu cầu HTTP POST trong một Controller trong ASP.NET Core MVC 6?', N'OnGet()', N'OnGetAsync()', N'Post()', N'None of the above', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (90, 1, N'Làm thế nào để truyền tham số cho một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng query string', N'Sử dụng route parameter', N'Sử dụng form data', N'Sử dụng session', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (91, 1, N'Làm thế nào để trả về một View từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N' Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'Sử dụng phương thức RedirectToAction()', N'Sử dụng phương thức RedirectToRoute()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (92, 1, N'Làm thế nào để trả về một JSON từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức Json()', N'Sử dụng phương thức Content()', N'Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (93, 1, N'Làm thế nào để trả về một File từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'Sử dụng phương thức File()', N'Sử dụng phương thức RedirectToAction()', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (94, 1, N'Làm thế nào để truy cập các tham số Form trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số Form', N'Sử dụng tham số ActionContext', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (95, 1, N'Làm thế nào để truy cập các tham số Route trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số Form', N'Sử dụng tham số ActionContext', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (96, 1, N'Làm thếnào để truy cập các tham số Query trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N' Sử dụng tham số Request', N' Sử dụng tham số QueryString', N'Sử dụng tham số ActionContext', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (97, 1, N'Làm thế nào để truy cập các tham số Session trong một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N' Sử dụng tham số Request', N'Sử dụng tham số Session', N'Sử dụng tham số ActionContext', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (98, 1, N'Làm thế nào để xử lý các lỗi trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng try-catch block trong phương thức Action', N'Sử dụng các middleware xử lý lỗi', N'Sử dụng phương thức OnException() trong Controller', N' Sử dụng tất cả các phương án trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (99, 1, N'Làm thế nào để tránh các tấn công CSRF trong một Controller trong ASP.NET CoreMVC 6?', N' Sử dụng các token CSRF để xác thực yêu cầu', N' Sử dụng các middleware bảo mật để ngăn chặn tấn công', N'Sử dụng phương thức ValidateAntiForgeryToken trong các phương thức Action', N' Sử dụng tất cả các phương án trên', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (100, 1, N'Làm thế nào để xác định các thành phần khác trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng Dependency Injection để inject các thành phần vào Controller', N' Sử dụng các phương thức Action để xử lý các thành phần khác', N'Sử dụng các middleware để quản lý các thành phần khác', N'Sử dụng tất cả các phương án trên', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (101, 1, N'Làm thế nào để định cấu hình một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức AddMvc() trong phương thức ConfigureServices() của Startup.cs', N'Sử dụng phương thức UseMvc() trong phương thức Configure() của Startup.cs', N'Sử dụng phương thứcConfigureServices() để đăng ký các dependency', N'Sử dụng phương thức Configure() để định cấu hình routing cho Controller.', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (102, 2, N'Trong ASP.NET Core MVC 6, View là gì?', N'Một thành phần của HTML để hiển thị dữ liệu', N'Một lớp để xử lý các yêu cầu HTTP đến', N'Một bảng cơ sở dữ liệu để lưu trữ thông tin người dùng', N'Một tệp CSS để thiết kế trang web', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (103, 2, N'Làm thế nào để tạo một View trong ASP.NET Core MVC 6?', N'Sử dụng trình tạo mã tự động của Visual Studio', N'Tạo một tệp mới và đặt tên theo cú pháp {TenAction}.cshtml trong thư mục Views/{TenController}', N'Tạo một lớp mới và kế thừa từ lớp ControllerBase', N'Sử dụng các công cụ kéo và thả để tạo mới', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (104, 2, N'Làm thế nào để truyền dữ liệu từ một Controller vào một View trong ASP.NET Core MVC 6?', N'Sử dụng Model Binding để truyền dữ liệu từ Controller đến View', N'Sử dụng Query String để truyền dữ liệu từ Controller đến View', N'Sử dụng Session để truyền dữ liệu từ Controller đến View', N'Sử dụng ViewBag để truyền dữ liệu từ Controller đến View', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (105, 2, N'Làm thế nào để truy cập dữ liệu trong một View trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số ViewData', N'Sử dụng tham số ViewBag', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (106, 2, N'Làm thế nào để hiển thị một danh sách trong một View trong ASP.NET Core MVC 6?', N'Sử dụng vòng lặp foreach', N'Sử dụng vòng lặp while', N'Sử dụng vòng lặp for', N' Không thể hiển thị danh sách trong View', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (107, 2, N'Làm thế nào để hiển thị một form trong một View trong ASP.NET Core MVC 6?', N'Sử dụng thẻ <form> trong HTML', N'Sử dụng Tag Helper <form> trong Razor', N'Sử dụng phương thức Form() trong Razor', N'Sử dụng các thư viện bên thứ ba để tạo form', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (108, 2, N'Làm thế nào để xử lý dữ liệu được gửi từ một form trong một View trong ASP.NET Core MVC 6?', N'Sử dụng Request để lấy dữ liệu
', N'Sử dụng FormCollection để lấy dữ liệu', N'Sử dụng Model Binding để lấy dữ liệu', N'Sử dụng các thư viện bên thứ ba để xử lý dữ liệu', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (109, 2, N'Làm thế nào để trả về một View từ một phương thức Action trong một Controller trong ASP.NET Core MVC 6?', N'Sử dụng phương thức View()', N'Sử dụng phương thức Redirect()', N'Sử dụng phương thức RedirectToAction()', N'Sử dụng phương thức RedirectToRoute()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (110, 2, N'Làm thế nào để truy cập các tham số Query trong một View trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N'Sử dụng tham số QueryString
', N'Sử dụng tham số ViewData', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (111, 2, N'Làm thế nào để truy cập các tham số Route trong một View trong ASP.NET Core MVC 6?', N'Sử dụng tham số HttpContext', N'Sử dụng tham số Request', N' Sử dụng tham số RouteData', N'Sử dụng tham số ViewBag', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (112, 2, N'Làm thế nào để sử dụng các thẻ HTML trong một View trong ASP.NET Core MVC 6?', N'Sử dụng mã HTML trực tiếp trong file View', N'Sử dụng các Tag Helper để tạo các thẻ HTML', N'Sử dụng cả hai phương pháp trên', N'Không thể sử dụng Tag Helper trong View', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (113, 2, N'Làm thế nào để sử dụng các Tag Helper trong một View trong ASP.NET Core MVC 6?', N'Sử dụng @helper', N'Sử dụng @function', N'Sử dụng @addTagHelper', N'Sử dụng @using', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (114, 2, N'Làm thế nào để sử dụng layouts trong ASP.NET Core MVC 6?', N'Sử dụng phương thức RenderSection()', N'Sử dụng phương thức AddSection()', N'Sử dụng phương thức Layout()', N'Sử dụng phương thức RenderBody()', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (115, 2, N'Làm thế nào để sử dụng partial views trong ASP.NET Core MVC 6?', N'Sử dụng thẻ <partial> trong Razor', N'Sử dụng phương thức PartialView() trong Controller', N'Sử dụng cả hai phương pháp trên', N'Không thể sử dụng partial views trong ASP.NET Core MVC 6

', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (116, 2, N'Làm thế nào để sử dụng View Components trong ASP.NET Core MVC 6?', N'Sử dụng phương thức Invoke() để hiển thị View Component', N'Sử dụng phương thức ViewComponent() để hiển thị View Component', N'Sử dụng cả hai phương pháp trên', N'Không thể sử dụng View Components trong ASP.NET Core MVC 6', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (117, 2, N'Làm thế nào để sử dụng Tag Helpers để tạo các thẻ HTML trong ASP.NET Core MVC 6?', N'Sử dụng các Tag Helper có sẵn trong ASP.NET Core MVC 6 hoặc tự định nghĩa các Tag Helper tùy chỉnh', N'Sử dụng các thẻ HTML trực tiếp trong file View', N' Sử dụng JavaScript để tạo các thẻ HTML', N'Sử dụng các thư viện bên thứ ba để tạo các thẻ HTML

', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (118, 2, N'Làm thế nào để sử dụng ViewBag trong ASP.NET Core MVC 6?', N'Sử dụng phương thức ViewBag.Add()', N'Sử dụng phương thức ViewBag.Get()', N'Sử dụng phương thức ViewBag.Remove()', N'Sử dụng phương thức ViewBag.Clear()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (119, 2, N'Làm thế nào để sử dụng ViewData trong ASP.NET Core MVC 6?', N'Sử dụng phương thức ViewBag.Add()', N'Sử dụng phương thức ViewBag.Get()', N'Sử dụng phương thức ViewBag.Remove()', N'Sử dụng phương thức ViewBag.Clear()', N'A', 1, 0, 0)
GO
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (120, 2, N'Làm thế nào để sử dụng TempData trong ASP.NET Core MVC 6?', N'Sử dụng phương thức TempData["key"] để lưu trữ dữ liệu', N'Sử dụng phương thức TempData.Peek("key") để lấy dữ liệu mà không xóa nó', N'Sử dụng phương thức TempData.Keep("key") để lưu trữ dữ liệu mà không xóa nó', N'Tất cả các phương pháp trên đều đúng', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (121, 2, N'Làm thế nào để sử dụng ViewStart và ViewImports trong ASP.NET Core MVC 6?', N'Sử dụng ViewStart để định nghĩa các layout mặc định cho các View', N'Sử dụng ViewImports để import các namespace và các Tag Helper được sử dụng trong các View', N'Sử dụng cả hai phương pháp trên để tăng tính tái sử dụng và giảm độ lặp lại trong việc viết View', NULL, N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (122, 3, N'Routing là gì trong ASP.NET Core MVC 6?', N'Cơ chế điều hướng các yêu cầu HTTP đến các Controller và Action tương ứng', N'Cơ chế lưu trữ các thông tin người dùng', N'Cơ chế xử lý các yêu cầu HTTP', N'Cơ chế tạo ra các Views', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (123, 3, N'Các thành phần chính của Routing là gì trong ASP.NET Core MVC 6?', N'Route Template và Route Handler', N'Route Table và Route Handler', N'Route Table và Route Middleware', N'Route Template và Route Middleware', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (124, 3, N'Để định nghĩa một Route trong ASP.NET Core MVC 6, ta sử dụng gì?', N'Phương thức MapRoute()', N' Phương thức UseRouting()', N'Phương thức UseEndpoints()', N'Cả ba phương thức trên', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (125, 3, N'Route Template là gì trong ASP.NET Core MVC 6?', N'Một chuỗi định dạng để so khớp với các yêu cầu HTTP đến', N'Một tệp lưu trữ các thông tin về Routing', N'Một lớp để xử lý các yêu cầu HTTP đến', N'Một bảng cơ sở dữ liệu để lưu trữ thông tin người dùng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (126, 3, N'Khi một yêu cầu HTTP đến, ASP.NET Core MVC 6 sẽ so khớp nó với Route nào?
', N'Route đầu tiên được khớp với yêu cầu', N' Route cuối cùng được khớp với yêu cầu', N' Route có Route Template phù hợp nhất với yêu cầu', N'Route có Route Handler phù hợp nhất với yêu cầu', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (127, 3, N'Để định nghĩa một Route với nhiều Route Templates, ta sử dụng gì trong ASP.NET Core MVC 6?', N'Phương thức MapRoute()', N'Phương thức Map()', N'Phương thức MapGet()', N'Phương thức MapPost()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (128, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: {id:int}', N'Sử dụng dấu ngoặc vuông [] để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [id:int]', N'Sử dụng dấu ngoặc nhọn {} để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: {id}?int', N'Sử dụng dấu ngoặc vuông [] để định nghĩa một Route Parameter và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [id]?int', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (129, 3, N'Route Constraint là gì trong ASP.NET Core MVC 6?', N'Một điều kiện được áp dụng lên Route Parameter để xác định giá trị hợp lệ cho Parameter được truyền vào Route', N'Một tài nguyên được sử dụng trong quá trình Route
', N'Một phương thức được sử dụng để xử lý các yêu cầu HTTP đến', N'Một lớp để lưu trữ các thông tin về Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (130, 3, N'Làm thế nào để định nghĩa một Route với một Route Name trong ASP.NET Core MVC 6?', N'Sử dụng thuộc tính Name của phương thức MapRoute()', N'Sử dụng phương thức WithName() của đối tượng RouteBuilder', N'Sử dụng phương thức Map() và đối tượng RouteAttribute để định nghĩa Route Name', N'Không thể định nghĩa Route Name trong ASP.NET Core MVC 6', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (131, 3, N'Làm thế nào để tạo ra một URL từ một Route trong ASP.NET Core MVC 6?', N'Sử dụng phương thức GenerateUrl() của đối tượng UrlHelper', N'Sử dụng phương thức Generate() của đối tượng RouteBuilder', N'Sử dụng phương thức MapUrl() củađối tượng RouteBuilder', N'Sử dụng phương thức GetUrl() của đối tượng HttpContext', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (132, 3, N'Làm thế nào để sử dụng các Query String trong một Route trong ASP.NET Core MVC 6?', N'Sử dụng dấu hỏi chấm (?) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu gạch chéo (/) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu mở ngoặc nhọn ({) và định nghĩa các Query Parameter trong Route Template', N'Không thể sử dụng các Query String trong một Route trong ASP.NET Core MVC 6', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (133, 3, N'Làm thế nào để sử dụng các Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng phương thức MapRoute() và truyền vào một Attribute Route Template', N'Sử dụng thuộc tính RouteAttribute trên các Action trong Controller', N'Sử dụng phương thức UseAttributeRouting() trong phương thức Configure() của Startup.cs', N'Cả ba phương thức trên đềuđúng', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (134, 3, N'Khi sử dụng Attribute Routing trong ASP.NET Core MVC 6, ta có thể định nghĩa các Route Template như thế nào?', N'Bằng cách sử dụng thuộc tính RouteAttribute trên các Action trong Controller', N'Bằng cách sử dụng phương thức MapRoute() và truyền vào một Attribute Route Template', N'Bằng cách sử dụng phương thức Map() và truyền vào một Attribute Route Template', N'Không thể định nghĩa các Route Template khi sử dụng Attribute Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (135, 3, N'Làm thế nào để định nghĩa các Route Parameter khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng các dấu ngoặc nhọn {} và đặt tên cho Route Parameter, ví dụ: [Route("/api/{id}")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, ví dụ: [Route("/api/[id]")]', N'Sử dụng các dấu ngoặc vuông [] và đặt têncho Route Parameter, sau đó sử dụng thuộc tính [FromRoute] trong tham số của Action, ví dụ: [Route("/api/{id}")] public ActionResult GetItem([FromRoute] int id)', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó sử dụng thuộc tính [FromBody] trong tham số của Action, ví dụ: [Route("/api/[id]")] public ActionResult GetItem([FromBody] int id)', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (136, 3, N'Làm thế nào để định nghĩa các Route Constraint khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng các dấu ngoặc nhọn {} và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng các dấu ngoặc vuông [] và đặt tên cho Route Parameter, sau đó thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N'tất cả các đáp án trên ', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (137, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/{id}?int")]', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (138, 3, N'Làm thế nào để định nghĩa một Route với một Route Name trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng thuộc tính Name của thuộc tính RouteAttribute', N'Sử dụng phương thức WithName() của đối tượng RouteBuilder', N'Sử dụng phương thức Name() của thuộc tính RouteAttribute', N'Không thể định nghĩa Route Name trong Attribute Routing', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (139, 3, N'Làm thế nào để tạo ra một URL từ một Route trong Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng phương thức GenerateUrl() của đối tượng UrlHelper', N'Sử dụng phương thức GenerateUrl() của đối tượng LinkGenerator', N'Sử dụng phương thức Generate() của đối tượng RouteBuilder', N'Sử dụng phương thức GenerateUrl() của đối tượng HttpContext', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (140, 3, N'Làm thế nào để sử dụng các Query String trong một Route trong Attribute Routing trong ASP.NET Core MVC 6?', N' Sử dụng dấu hỏi chấm (?) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu gạch chéo (/) và định nghĩa các Query Parameter trong Route Template', N'Sử dụng dấu mở ngoặc nhọn ({) và định nghĩa các Query Parameter trong Route Template', N'Không thể sử dụng các Query String trong một Route khi sử dụng Attribute Routing trong ASP.NET Core MVC 6', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (141, 3, N'Làm thế nào để định nghĩa một Route với một Route Constraint khi sử dụng Attribute Routing trong ASP.NET Core MVC 6?', N'Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/{id:int}")]', N'Sử dụng dấu ngoặc vuông [] và thêm một chuỗi điều kiện vào sau dấu hai chấm (:), ví dụ: [Route("/api/[id]:int")]', N'Sử dụng dấu ngoặc vung [] và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/[id]?int")]', N' Sử dụng dấu ngoặc nhọn {} và thêm một chuỗi điều kiện vào sau dấu hỏi chấm (?), ví dụ: [Route("/api/{id}?int")]', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (142, 4, N'Trong mô hình MVC, Model đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả A, C', N'D', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (143, 4, N'Trong mô hình MVC, View đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả A, B', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (144, 4, N'Trong mô hình MVC, Controller đại diện cho gì?', N'Dữ liệu và quản lý cơ sở dữ liệu', N'Giao diện người dùng', N'Thao tác xử lý dữ liệu', N'Cả B, C', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (145, 4, N'Entity Framework là gì?', N'Một thư viện ORM (Object-Relational Mapping)', N'Mộtthư viện xử lý báo cáo', N'Một thư viện xử lý tệp', N'Cả A, B, C', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (146, 4, N'Trong Entity Framework, DbContext làm gì?', N'Làm việc với cơ sở dữ liệu và thực hiện các thao tác CRUD', N'Quản lý giao diện người dùng', N'Xử lý các yêu cầu HTTP', N'Cả A, B, C', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (147, 4, N'Trong Entity Framework, DbSet đại diện cho gì?', N'Một bảng trong cơ sở dữ liệu', N'Một trường trong cơ sở dữ liệu', N'Một khóa ngoại trong cơ sở dữ liệu', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (148, 4, N'Trong Entity Framework, thuộc tính [Key] được sử dụng để làm gì?', N'Xác định trường khóa chính của một bảng', N'Xác định trường khóa ngoại của một bảng', N'Xác định trường tên của một bảng', N'Xác định trường mô tả của một bảng', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (149, 4, N'Trong Entity Framework, thuộc tính [ForeignKey] được sử dụng để làm gì?', N'Xác định trường khóa chính của một bảng', N'Xác định trường khóa ngoại của một bảng', N'Xác định trường tên của một bảng', N'Xác định trường mô tả của một bảng', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (150, 4, N'Trong ASP.NET Core 6, để sử dụng Entity Framework, chúng ta cần thêm gói nào vào project?', N'Microsoft.EntityFrameworkCore', N'Microsoft.AspNetCore.Mvc', N'Microsoft.AspNetCore.Identity', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (151, 4, N'Trong ASP.NET Core 6, chúng ta có thể sử dụng Entity Framework với các cơ sở dữ liệu nào?', N'SQL Server, MySQL, PostgreSQL, SQLite, Oracle', N'SQL Server, MySQL, PostgreSQL, SQLite', N'SQL Server, MySQL, Oracle', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (152, 4, N'Trong ASP.NET Core 6, để tạo một DbContext mới, chúng ta cần kế thừa từ lớp nào?
', N'DbContext', N'IdentityDbContext', N' ControllerBase', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (153, 4, N'Trong ASP.NET Core 6, để đăng ký DbContext với DI (Dependency Injection), chúng ta sử dụng phương thức nào trong ConfigureServices?', N'AddDbContext', N' AddControllers', N'AddMvc', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (154, 4, N'Trong ASP.NET Core 6, để tạo một bảng mới trong cơ sở dữ liệu, chúng ta cần làm gì?', N'Tạo một lớp Entity mới và thêm nó vào DbContext', N'Tạo một lớp Controller mới và thêm nó vào DbContext', N'Tạo một lớp View mới và thêm nó vào DbContext', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (155, 4, N'Trong ASP.NET Core 6, để tạo một bản ghi mới trong cơ sở dữ liệu, chúng ta cần làm gì?', N'Tạo một đối tượng Entity mới và thêm nó vào DbSet', N'Tạo một đối tượng Controller mới và thêm nó vào DbSet', N'Tạo một đối tượng View mới và thêm nó vào DbSet
', N'Tất cả đều sai', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (156, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy tất cả các bản ghi từ một bảng trong cơ sở dữ liệu, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Add()', N'DbSet<T>.All()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (157, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy một bản ghi từ một bảng trong cơ sở dữ liệu dựa trên khoá chính, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Add()', N'DbSet<T>.Single()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (158, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy các bản ghi từ một bảng trong cơ sở dữ liệu dựa trên một điều kiện, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.ToList()', N'DbSet<T>.Find()', N'DbSet<T>.Where()', N'DbSet<T>.Filter()', N'C', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (159, 4, N'Trong ASP.NET Core 6, để thực hiện một truy vấn lấy một bản ghi từ một bảng trong cơ sở dữ liệu dựa trên một điều kiện, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.First()', N'DbSet<T>.FirstOrDefault()', N'DbSet<T>.Single()', N'DbSet<T>.SingleOrDefault()', N'B', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (160, 4, N'Trong ASP.NET Core 6, để thêm một bản ghi mới vào cơ sở dữ liệu, chúng ta dùng phương thức nào của DbSet?', N'DbSet<T>.Add()', N'DbSet<T>.Update()', N'DbSet<T>.Remove()', N'DbSet<T>.Attach()', N'A', 1, 0, 0)
INSERT [dbo].[CauHoi] ([CauHoiId], [ChuongId], [NoiDung], [DapAnA], [DapAnB], [DapAnC], [DapAnD], [DapAnDung], [DoKho], [SoLanLay], [SoLanTraLoiDung]) VALUES (161, 4, N'Trong ASP.NET Core 6, để lưu các thay đổi vào cơ sở dữ liệu, chúng ta dùng phương thức nào của DbContext?', N'DbContext.SaveChanges()', N'DbContext.Add()', N'DbContext.Update()', N'DbContext.Remove()', N'A', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoi_BaiLam] ON 

INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1823, 88, 108, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1824, 88, 107, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1825, 88, 106, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1826, 88, 109, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1827, 88, 105, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1828, 88, 101, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1829, 88, 110, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1830, 88, 102, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1831, 89, 108, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1832, 89, 102, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1833, 89, 101, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1834, 89, 105, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1835, 89, 110, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1836, 89, 107, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1837, 89, 106, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1838, 89, 109, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1849, 91, 105, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1850, 91, 102, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1851, 91, 110, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1852, 91, 109, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1853, 91, 107, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1854, 91, 101, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1855, 91, 106, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1856, 91, 108, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1887, 94, 67, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1888, 94, 100, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1889, 94, 64, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1890, 94, 73, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1891, 94, 71, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1892, 94, 74, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1893, 94, 70, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1894, 94, 69, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1895, 94, 62, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1896, 94, 63, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1897, 94, 66, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1898, 94, 76, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1899, 94, 77, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1900, 94, 68, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1901, 94, 78, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1902, 94, 72, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1903, 94, 79, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1904, 94, 99, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1905, 94, 75, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1906, 94, 61, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1907, 94, 65, N'X')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1908, 95, 69, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1909, 95, 71, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1910, 95, 67, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1911, 95, 76, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1912, 95, 61, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1913, 95, 63, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1914, 95, 99, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1915, 95, 74, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1916, 95, 64, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1917, 95, 65, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1918, 95, 100, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1919, 95, 72, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1920, 95, 66, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1921, 95, 79, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1922, 95, 62, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1923, 95, 73, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1924, 95, 70, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1925, 95, 68, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1926, 95, 77, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1927, 95, 75, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1928, 95, 78, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1929, 96, 66, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1930, 96, 73, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1931, 96, 100, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1932, 96, 65, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1933, 96, 64, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1934, 96, 79, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1935, 96, 68, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1936, 96, 99, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1937, 96, 62, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1938, 96, 69, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1939, 96, 77, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1940, 96, 76, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1941, 96, 63, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1942, 96, 75, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1943, 96, 70, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1944, 96, 74, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1945, 96, 72, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1946, 96, 67, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1947, 96, 78, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1948, 96, 71, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1949, 96, 61, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1950, 97, 179, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1951, 97, 167, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1952, 97, 180, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1953, 97, 172, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1954, 97, 171, N'B')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1955, 97, 169, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1956, 97, 166, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1957, 97, 174, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1958, 97, 181, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1959, 97, 176, N'D')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1960, 97, 168, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1961, 97, 178, N'A')
GO
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1962, 97, 175, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1963, 97, 185, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1964, 97, 184, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1965, 97, 170, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1966, 97, 183, N'C')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1967, 97, 173, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1968, 97, 182, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1969, 97, 177, N'A')
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1970, 98, 169, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1971, 98, 171, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1972, 98, 166, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1973, 98, 182, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1974, 98, 183, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1975, 98, 179, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1976, 98, 177, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1977, 98, 173, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1978, 98, 180, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1979, 98, 176, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1980, 98, 181, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1981, 98, 167, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1982, 98, 172, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1983, 98, 174, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1984, 98, 178, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1985, 98, 170, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1986, 98, 184, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1987, 98, 185, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1988, 98, 175, NULL)
INSERT [dbo].[CauHoi_BaiLam] ([CauHoi_BaiLamId], [BaiLamId], [CauHoi_DeId], [DapAnSVChon]) VALUES (1989, 98, 168, NULL)
SET IDENTITY_INSERT [dbo].[CauHoi_BaiLam] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoi_De] ON 

INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (61, 16, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (62, 11, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (63, 20, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (64, 2, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (65, 4, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (66, 18, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (67, 7, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (68, 12, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (69, 6, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (70, 3, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (71, 19, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (72, 17, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (73, 14, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (74, 13, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (75, 8, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (76, 10, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (77, 5, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (78, 15, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (79, 1, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (99, 44, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (100, 47, 1)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (101, 17, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (102, 18, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (105, 43, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (106, 52, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (107, 70, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (108, 71, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (109, 77, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (110, 81, 2)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (166, 83, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (167, 94, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (168, 9, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (169, 91, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (170, 82, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (171, 117, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (172, 106, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (173, 105, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (174, 118, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (175, 104, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (176, 45, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (177, 131, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (178, 57, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (179, 59, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (180, 43, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (181, 65, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (182, 144, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (183, 70, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (184, 147, 8)
INSERT [dbo].[CauHoi_De] ([CauHoi_DeId], [CauHoiId], [DeId]) VALUES (185, 156, 8)
SET IDENTITY_INSERT [dbo].[CauHoi_De] OFF
GO
INSERT [dbo].[Chuong] ([ChuongId], [TenChuong], [MonHocId]) VALUES (1, N'Giới thiệu về ASP.NET CORE', 1)
INSERT [dbo].[Chuong] ([ChuongId], [TenChuong], [MonHocId]) VALUES (2, N'Model trong ASP.NET CORE MVC', 1)
INSERT [dbo].[Chuong] ([ChuongId], [TenChuong], [MonHocId]) VALUES (3, N'Controller trong ASP.NET CORE MVC', 1)
INSERT [dbo].[Chuong] ([ChuongId], [TenChuong], [MonHocId]) VALUES (4, N'View trong ASP.NET CORE MVC', 1)
INSERT [dbo].[Chuong] ([ChuongId], [TenChuong], [MonHocId]) VALUES (7, N'Mở đầu về PHP', 2)
GO
SET IDENTITY_INSERT [dbo].[DanhSachThi] ON 

INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (56, 3, 1, 1)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (57, 2, 2, 0)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (58, 30, 1, 1)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (59, 31, 1, 0)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (60, 32, 1, 1)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (61, 30, 10, 1)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (62, 31, 10, 0)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (63, 32, 10, 0)
INSERT [dbo].[DanhSachThi] ([DanhSachThiId], [TaiKhoanId], [KyKiemTraId], [TrangThai]) VALUES (64, 37, 10, 0)
SET IDENTITY_INSERT [dbo].[DanhSachThi] OFF
GO
SET IDENTITY_INSERT [dbo].[De] ON 

INSERT [dbo].[De] ([DeId], [KyKiemTraId], [SoCauHoi], [DoKhoDe]) VALUES (1, 1, 40, 100)
INSERT [dbo].[De] ([DeId], [KyKiemTraId], [SoCauHoi], [DoKhoDe]) VALUES (2, 2, 10, 100)
INSERT [dbo].[De] ([DeId], [KyKiemTraId], [SoCauHoi], [DoKhoDe]) VALUES (8, 10, 20, 50)
SET IDENTITY_INSERT [dbo].[De] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([Id], [TenDangNhap], [MatKhau], [HoTen], [Email], [AnhDaiDien], [IsGiaoVien], [TrangThai]) VALUES (1, N'Admin1', N'4297f44b13955235245b2497399d7a93', N'Phan Việt Bắc', N'pvbkot1@gmail.com', N'admin1.jpg', 1, 1)
INSERT [dbo].[GiaoVien] ([Id], [TenDangNhap], [MatKhau], [HoTen], [Email], [AnhDaiDien], [IsGiaoVien], [TrangThai]) VALUES (3, N'giaovien1', N'4297f44b13955235245b2497399d7a93', N'Trần Thị Hà', N'hatran1@gmail.com', N'giaovien1.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
GO
SET IDENTITY_INSERT [dbo].[KyKiemTra] ON 

INSERT [dbo].[KyKiemTra] ([KyKiemTraId], [TenKyKiemTra], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianLamBai]) VALUES (1, N'KIỂM TRA CUỐI KỲ', CAST(N'2024-02-28T14:41:00.0000000' AS DateTime2), CAST(N'2024-03-10T21:50:00.0000000' AS DateTime2), 45)
INSERT [dbo].[KyKiemTra] ([KyKiemTraId], [TenKyKiemTra], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianLamBai]) VALUES (2, N'KIỂM TRA 15P', CAST(N'2024-02-28T14:45:00.0000000' AS DateTime2), CAST(N'2024-03-31T22:29:00.0000000' AS DateTime2), 15)
INSERT [dbo].[KyKiemTra] ([KyKiemTraId], [TenKyKiemTra], [ThoiGianBatDau], [ThoiGianKetThuc], [ThoiGianLamBai]) VALUES (10, N'KIỂM TRA 45 PHÚT', CAST(N'2024-03-02T12:30:00.0000000' AS DateTime2), CAST(N'2024-03-31T12:29:00.0000000' AS DateTime2), 45)
SET IDENTITY_INSERT [dbo].[KyKiemTra] OFF
GO
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([MonHocId], [TenMonHoc], [MaMonHoc], [MoTa]) VALUES (1, N'ASP.NET CORE', N'IT6005', N'<p><img src="https://localhost:7258/contents/GioiThieu/12312312312.png" style="width: 770px;"><span style="font-size: 14.4px;"><br></span></p><p><span style="font-size: 14.4px;">ASP.NET Core là một nền tảng phát triển ứng dụng web đa nền tảng, mã nguồn mở và miễn phí được phát triển bởi Microsoft. Nó được thiết kế để cung cấp cho các nhà phát triển một cách tiếp cận đa nền tảng, hiệu quả và linh hoạt để xây dựng các ứng dụng web động, có khả năng mở rộng và dễ bảo trì.</span></p><p><span style="font-size: 14.4px;">ASP.NET Core được phát triển từ cơ sở của .NET Framework và được thiết kế để hoạt động trên nhiều nền tảng, bao gồm Windows, macOS và Linux. Nó cung cấp các tính năng tiên tiến như Dependency Injection, Middleware, Hosting Environment, Configuration và Logging.</span></p><p><span style="font-size: 14.4px;">ASP.NET Core cũng giúp đơn giản hóa quá trình xây dựng các ứng dụng web bằng cách cung cấp các mô-đun (module) độc lập và linh hoạt, cho phép các nhà phát triển tùy chỉnh các tính năng của nền tảng theo nhu cầu của họ. Ngoài ra, nó cũng hỗ trợ nhiều kiểu ứng dụng web, bao gồm các ứng dụng web Razor Pages, ứng dụng web MVC và các ứng dụng web API.</span></p><p><span style="font-size: 14.4px;">ASP.NET Core cũng cung cấp một số tính năng mới, bao gồm Razor Pages, Tag Helpers, View Components, Middleware Components và SignalR. Nó cũng hỗ trợ các công nghệ tiên tiến như WebSockets, Web API và Single Page Applications.</span></p><p><span style="font-size: 14.4px;">Với các tính năng tiên tiến, hiệu quả và linh hoạt, cùng với khả năng hoạt động trên nhiều nền tảng, ASP.NET Core là một nền tảng phát triển ứng dụng web mạnh mẽ, được sử dụng rộng rãi trong ngành công nghiệp phát triển phần mềm.</span></p><p><img src="https://localhost:7258/contents/GioiThieu/abc.png" style="width: 667px;"></p><p><span style="font-size: 14.4px;">Mô hình MVC (Model-View-Controller) là một mô hình kiến trúc phần mềm được sử dụng để thiết kế các ứng dụng web. Nó chia ứng dụng thành ba phần chính: Model, View và Controller.</span></p><p><span style="font-size: 14.4px;">Model: Đại diện cho các đối tượng dữ liệu và luật nghiệp vụ liên quan đến xử lý dữ liệu. Nó có trách nhiệm lưu trữ và truy xuất dữ liệu từ cơ sở dữ liệu hoặc các nguồn dữ liệu khác.</span></p><p><span style="font-size: 14.4px;">View: Đại diện cho giao diện người dùng của ứng dụng. Nó có trách nhiệm hiển thị dữ liệu cho người dùng dưới dạng trực quan và dễ hiểu.</span></p><p><span style="font-size: 14.4px;">Controller: Đại diện cho các thành phần xử lý yêu cầu và phản hồi của ứng dụng. Nó có trách nhiệm tiếp nhận các yêu cầu từ người dùng, tương tác với Model để truy xuất và xử lý dữ liệu, sau đó trả về các kết quả đến View để hiển thị cho người dùng.</span></p><p><span style="font-size: 14.4px;">Mô hình MVC cho phép phân chia rõ ràng các trách nhiệm của ứng dụng, giúp cho việc phát triển và bảo trì ứng dụng được dễ dàng hơn. Nó cũng giúp tăng tính tái sử dụng của mã và giảm độ phức tạp của ứng dụng.</span></p><p><span style="font-size: 14.4px;">ASP.NET Core hỗ trợ mô hình MVC và cung cấp các API và tính năng để phát triển các ứng dụng web dựa trên mô hình này. Các ứng dụng web ASP.NET Core sử dụng mô hình MVC có thể được triển khai trên nhiều nền tảng khác nhau, bao gồm Windows, macOS và Linux.</span></p><p><span style="font-size: 14.4px;"><br></span></p>')
INSERT [dbo].[MonHoc] ([MonHocId], [TenMonHoc], [MaMonHoc], [MoTa]) VALUES (2, N'Lập Trình Web PHP', N'IT6006', N'<p style="margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255); text-align: justify;">Ngôn ngữ PHP là từ viết tắt của Personal Home Page nay đã chuyển thành Hypertext Preprocessor. Thuật ngữ này là một dạng mã lệnh hoặc một chuỗi ngôn ngữ kịch bản được dùng để phát triển các ứng dụng web chạy trên máy chủ. Ki các lập trình viên PHP viết chương trình, chuỗi lệnh sẽ được xử lý trên server sau đó sinh ra mã HTML trên client. Dựa vào đó, các ứng dụng trên website sẽ hoạt động một cách dễ dàng.</p><p style="margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);"><img decoding="async" alt="Ngôn ngữ lập trình PHP" width="696" height="464" data-srcset="https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1024x683.jpg 1024w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-300x200.jpg 300w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-768x512.jpg 768w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1536x1024.jpg 1536w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-2048x1366.jpg 2048w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-696x464.jpg 696w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1068x712.jpg 1068w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-630x420.jpg 630w" data-src="https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1024x683.jpg" data-sizes="(max-width: 696px) 100vw, 696px" class="size-large wp-image-51241 lazyloaded" src="https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1024x683.jpg" loading="lazy" sizes="(max-width: 696px) 100vw, 696px" srcset="https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1024x683.jpg 1024w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-300x200.jpg 300w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-768x512.jpg 768w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1536x1024.jpg 1536w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-2048x1366.jpg 2048w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-696x464.jpg 696w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-1068x712.jpg 1068w, https://topdev.vn/blog/wp-content/uploads/2022/12/php-la-gi-630x420.jpg 630w" style="height: auto; max-width: 100%; border: 0px; opacity: 1; transition: opacity 400ms ease 0ms; margin-bottom: 21px; display: block;"></p><p style="margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, BlinkMacSystemFont, -apple-system, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255); text-align: justify;">Ngôn ngữ PHP thường được dùng trong việc xây dựng và phát triển website bởi nó có thể kết nối dễ dàng với các website khác có sử dụng&nbsp;<a href="https://topdev.vn/blog/html-la-gi-cac-the-html-co-ban-va-ung-dung/" style="color: rgb(226, 74, 50); text-decoration: none;">HTML</a>. PHP cũng là ngôn ngữ lập trình có mã nguồn mở, tương thích với nhiều nền tảng khác nhau như MacOS, Linux, Windows,… PHP được nhiều người dùng đánh giá là dễ đọc nên đa số các lập trình viên sẽ lựa chọn học PHP trước khi bắt đầu vào nghề.</p>')
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[Muc] ON 

INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (2, N'1.1.	Giới thiệu chung về các công cụ cho ASP.NET Core', 2, 8, N'<p class="Noidung"><span class="NoidungChar">Để phát triển ứng dụng ASP.NET Core bạn
cần các công cụ sau&nbsp;: <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">+ Bộ ASP.NET core SDK&nbsp;;<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">+ một môi trường phát triển tích hợp
như Visual Studio, JetBrains Rider hoặc một coide editor như Visual Studio
Code.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Tất cả các công cụ trên đều được cung
cấp miễn phí (Hoặc có bản miễn phí) từ website của Microsoft.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Bạn có thể lựa chọn cài đặt bản mới nhất
của ASP.NET Core SDK cho windows từ đường link&nbsp;: </span><a href="https://dotnet.microsoft.com/en-us/download">https://dotnet.microsoft.com/en-us/download</a><span class="NoidungChar">.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Visual Studio bản Community (Miễn
phí)và Visual Studio Code (miễn phí, đa nền tảng) có thể tải xuống từ đượng
link&nbsp;: </span><a href="https://visualstudio.microsoft.com/fr/downloads/">https://visualstudio.microsoft.com/fr/downloads/</a><span class="NoidungChar">.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Riêng JetBrains Rider không có bản miễn
phí mà chỉ có bản dùng thử 30 ngày.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Nhìn chung, trên windows việc cài đặt
môi trường phát triển cho ASP.NET Core rất đơn giản.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Để đơn giản hóa việc hướng dẫn, tất cả
các bài học về sau đều sử dụng Visual Studio 2019 Community. Nếu muốn dùng IDE
khác bạn cần tự mình tìm hiểu riêng. <o:p></o:p></span></p><p>

















</p><p class="Noidung"><span class="NoidungChar">Trong các phần tiếp theo chúng ta sẽ
cùng học cài đặt môi trường làm việc.<o:p></o:p></span></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (3, N'1.2.	Cài đặt ASP.NET Core SDK trên Windows', 2, 2, N'<p class="Noidung"><span class="NoidungChar">Do được thiết kế để phát triển và thực
thi đa nền tảng, việc cài đặt ASP.NET Core tương đối dễ dàng trên các hệ điều
hành. Ở đây chúng ta chỉ trình bày cách cài đặt trên windows.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Nếu bạn sử dụng Visual Studio Code, bạn
cần tự mình cài đặt ASP.NET Core SDK theo hướng dẫn dưới đây. Nếu bạn sử dụng
Visual Studio, bạn có thể bỏ qua phần này để tìm hiểu cách cài đặt thông qua
Visual Studio ở phần tiếp theo.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Để thực thi ứng dụng ASP.NET Core, bạn
cần cài đặt ASP.NET Core Runtime. Để phát triển ứng dụng, bạn cần cài đặt
ASP.NET Core SDK. Khi cài đặt SDK sẽ đồng thời cài đặt luôn Runtime. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Bạn có thể chọn tải bản SDK mới nhất từ
đường link&nbsp;:<o:p></o:p></span></p><p class="Noidung"><a href="https://dotnet.microsoft.com/en-us/download/dotnet/6.0">https://dotnet.microsoft.com/en-us/download/dotnet/6.0</a><span class="NoidungChar"> hoặc<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">&nbsp;</span><a href="https://dotnet.microsoft.com/en-us/download">https://dotnet.microsoft.com/en-us/download</a><span class="NoidungChar"><o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Tải bộ cài về và cài đặt như bất ký
chương trình windows bình thường nào.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Sau khi cài đặt xong bạn có thể chạy lệnh&nbsp; </span><span class="9ChthchChar">dotnet –version&nbsp; </span>&nbsp;&nbsp;trên Command Prompt hoặc PowerShell để kiểm
tra kết quả.<o:p></o:p></p><p>















</p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/1.png" style="width: 1288px;"><br></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (4, N'1.3.	Cài đặt ASP.NET Core SDK với Visual Studio 2019', 2, 3, N'<p class="Noidung"><span class="NoidungChar">Nếu bạn sử dụng windows và Visual
Studio, việc cài đặt .NET core runtime và SDK vô cùng đơn giản. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Do .NET Core&nbsp; 6.0 (phiên bản mới nhất hiện nay sau bạn 7.0
vì bản 7.0 đang được thử nghiệm) đòi hỏi Visual Studio 2019 (v16.3 trở lên) ,
nên&nbsp;: <o:p></o:p></span></p><p class="Noidung" style="margin-left:36.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span class="NoidungChar">(1)<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span class="NoidungChar">Nếu chưa có hoặc đang dùng một bản Visual Studio cũ , hãy cài
đặt Visual Studio (community) 2019 . Trong quá trình cài đặt hãy chọn Workloads
<b>ASP.NET anh web development </b>(phát
triển ứng dụng trên cả ASP.NET và ASP.NET core) và <b>.NET desktop development .</b><o:p></o:p></span></p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/2.png" style="width: 1284px;"><br></p><p class="Noidung" style="margin-left:36.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span class="NoidungChar">(2)<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span class="NoidungChar">Nếu bạn đã cài đặt sẵn Visual Studio 2019, hãy update lên
build mới nhất. Sau đó chạy chương trình <b>Visual
Studio Installer</b> =&gt; chọn <b>Modify </b>=&gt;
chọn tab <b>Workloads </b>và cũng lựa chọn
hai mục như trên.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">&nbsp;</span></p><p class="Noidung"><span class="NoidungChar">Lựa chọn 2 workloads sẽ giúp bạn cài đặt
tất cả các thành phần cần thiết cho phát triển thực thi ứng dụng ASP.NET Core
trên windows.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Khi quá trình cài đặt hoàn tất, bạn đã
sẵn sàn cho cả việc phát triển và chạy ứng dụng ASP.NET Core. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Bạn cũng có thể chạy lệnh <b>dotnet –version </b>trên command Prompt hoặc
PowerShell để kiểm tra kết quả. <o:p></o:p></span></p><p>

















</p><p class="Noidung"><span class="NoidungChar">Đây là cách thức dễ dàng nhất để cài đặt
môi trường phát triển ASP.NET Core trên Windows.<o:p></o:p></span></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (5, N'1.4.	Tạo dự án ASP.NET Core từ Visual Studio', 2, 4, N'<p class="Noidung"><span class="NoidungChar">Trong Visual Studio, dự án ASP.NET
Core được tạo ra như bất kỳ một dự án nào khác từ của sổ Get Started =&gt;
Create a new project, hoặc từ menu (File =&gt; New =&nbsp;&gt; Project).<o:p></o:p></span></p><p class="Noidung">Chọn loại project là ASP.NET Core Web App
(Model-View-Controller) , sau đó nhấn Next. Có thể tìm nhanh bằng cách điền tên
loại project vào khung tìm kiếm hoặc chọn ngôn ngữ, nền tảng từ filter như sau:<o:p></o:p></p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/3.png" style="width: 936.984px;"><br></p><p class="9Chthch">Lưu ý: Tránh nhầm với project loại ASP.NET Web App (không có
Model-View-Controller). Loại project này được viết theo mô hình Razor Pages<span class="NoidungChar"><span style="font-size:11.0pt"><o:p></o:p></span></span></p><p class="Noidung"><span class="NoidungChar">&nbsp;</span></p><p class="Noidung"><span class="NoidungChar">Ở bước tiếp theo bạn chọn tên project
(Project name), nơi lưu (Location) và tên solution (solution name).<o:p></o:p></span></p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/4.png" style="width: 934.992px;"><br></p><p class="Noidung">− Chọn phiên bản .NET (mặc định ở VS 2022 là .NET 6.0). Các
tùy chọn khác giữ nguyên mặc định như hình dưới, sau đó nhấn nút Create:<span class="NoidungChar"><o:p></o:p></span></p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/5.png" style="width: 522px;"><br></p><p class="Noidung"><span class="NoidungChar">Khi lựa chọn template nào , một ứng dụng
mẫu tương ứng sẽ được tạo ra cho bạn. Tuy nhiên, sau này nếu cần thiết bạn hoàn
toàn có thể xây dựng các ứng dụng khá trên cùng project. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Ví dụ, nếu ban đầu bạn chọn template
API, sau bạn hoàn toàn có thể phát triển ứng dụng MVC trên đó . ASP.NET Core thống
nhất hết các loại ứng dụng này. VIệc chọn template chỉ giúp bạn tạo ra khung ứng
dụng phù hợp ban đầu thôi.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Hãy chọn template <b>Web Application (Model-View-Controller).<o:p></o:p></b></span></p><p class="Noidung"><span class="NoidungChar">Bạn sẽ thu được một project có cấu
trúc như sau&nbsp;:<o:p></o:p></span></p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/6.png" style="width: 304.992px;"><br></p><p class="Noidung">Cấu trúc 1 project ASP.NET Core MVC như sau:<o:p></o:p></p><p class="Noidung">&nbsp;− Thư mục wwwroot là
thư mục gốc của website. Tất cả thành phần tĩnh như CSS, JavaScript, các tài
nguyên (asset, resource) như hình ảnh, video, âm thanh… đều phải đặt trong thư
mục này5 . Project ASP.NET Core MVC đã có sẵn jQuery và Bootstrap nằm trong thư
mục wwwroot/lib. <o:p></o:p></p><p class="Noidung">− Các thư mục Controllers, Models, Views để chứa các thành phần
tương ứng của mô hình MVC. <o:p></o:p></p><p class="Noidung">− File appsettings.json chứa các cài đặt, thiết lập cho
project, ví dụ như các giá trị toàn cục, chuỗi kết nối đến CSDL… Dữ liệu của
file này được lưu trữ theo dạng JSON (tức là theo từng cặp key-value):<o:p></o:p></p><p class="5aCode">{ <o:p></o:p></p><p class="5aCode">"key1": "value1",<o:p></o:p></p><p class="5aCode">&nbsp;"key2":
"value2"<o:p></o:p></p><p class="5aCode">&nbsp;}<o:p></o:p></p><p>











































</p><p class="Noidung">− File Program.cs là nơi chứa những đoạn lệnh để đăng ký
Middleware6 , thiết lập các dịch vụ (Service), khởi chạy ứng dụng… Ở các phiên
bản .NET 5.0 trở về trước, những công việc này nằm cả 2 file Program.cs và
Startup.cs. Kể từ phiên bản .NET 6.0, Microsoft đã hợp nhất 2 file này lại
thành 1 file Program.cs duy nhất.<o:p></o:p></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (6, N'1.5.	Tạo dự án ASP.NET Core từ CLI', 2, 5, N'<p class="Noidung"><span class="NoidungChar">.NET Core cung cấp giao diện dòng lệnh
(command Line Interface, CLI) rất mạnh giúp bạn thực hiện được tất cả các công
việc mà không cần dến giao diện đồ họa của Visual Studio . CLI đặc biệt phù hợp
nếu bạn phát triển và chạy ứng dụng ASP.NET Core trên Linux và sử dụng Visual
Studio Code. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Bạn có thể sử dụng CLI từ Command
Prompt hoặc PowerShell của windows&nbsp;: <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">&nbsp;</span></p><p class="Noidung" style="margin-left:54.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span class="NoidungChar">1.<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span class="NoidungChar">Chuyển tới thư mục nơi sẽ tạo project&nbsp;; <o:p></o:p></span></p><p class="Noidung" style="margin-left:54.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span class="NoidungChar">2.<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span class="NoidungChar">Gõ lệnh <b>dotnet new
webapp –o caothangdemo </b>và ấn Enter&nbsp;;<o:p></o:p></span></p><p class="Noidung" style="margin-left:54.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span class="NoidungChar">3.<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span class="NoidungChar">Chờ .NET Core hoàn thành tạo project.<o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Lệnh <b>dotnet new webapp –o &lt;thư mục&gt; </b>sẽ tạo ra một project thuộc loại
webapp (tương đương template Web Application trong Visual Studio) bên trong thư
mục được chỉ định. Tên thư mục cũng sẽ là tên của project.<o:p></o:p></span></p><p class="9Chthch"><span class="NoidungChar"><span style="font-size:11.0pt">Bạn
cũng có thể dùng lệnh dotnet new mvc –o &lt;thư mục&gt; để tạo ra project thuộc
loại mvc, tương đương với lựa chọn template web Application
(Model-View-Controller) trong Visual Studio. Nếu muốn biết hết các template, bạn
có thể gõ lệnh dotnet new –help .</span></span></p><p class="9Chthch"><img src="https://localhost:7258/contents/GioiThieu/7.png" style="width: 646.992px;"><span class="NoidungChar"><span style="font-size:11.0pt"><br></span></span><span style="font-size: 0.9rem;">&nbsp;</span></p><p class="Noidung"><span class="NoidungChar">Bạn có thể mở project vừa tạo trong
Visual Studio&nbsp;: <o:p></o:p></span></p><p>





















</p><p class="Noidung"><img src="https://localhost:7258/contents/GioiThieu/8.png" style="width: 375px;"><br></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (7, N'1.6.	Dịch và chạy ứng dụng ASP.NET Core từ Visual Studio', 2, 6, N'<p class="Noidung"><span class="NoidungChar">Nếu bạn quen thuộc với ASP.NET, bạn sẽ
nhanh chóng nhận ra việc dịch và chạy úng dụng ASP.NET Core có điểm quen thuộc,
đồng thời lại có sự khác biết lớn. <o:p></o:p></span></p><p class="Noidung"><span class="NoidungChar">Sự khác biệt nằm ở chỗ , ứng dụng
ASP.NET Core có thể chạy đọc lập như một ứng dụng console, cũng có thể tích hợp
với một chương trình web server. <o:p></o:p></span></p><p>



</p><p class="Noidung"><span class="NoidungChar">Từ Visual Studio , bạn có thể chạy ứng
dụng ASP.NET Core với IIS Express hoặc dưới dạng ứng dụng console.&nbsp;</span></p><p class="Noidung"><span class="NoidungChar">Chúng ta cùng xem xét ký hơn từng tính
huống .</span></p><p class="Noidung"><br></p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (8, N'1.7.	Dịch và chạy ứng dụng ASP.NET Core từ Command Prompt hoặc PowerShell', 2, 7, N'<p>7</p>')
INSERT [dbo].[Muc] ([MucId], [TenMuc], [BaiId], [MucSo], [NoiDung]) VALUES (9, N'1.8.	Cấu hình chạy Debug trên Visual Studio', 2, 1, N'<p>8</p>')
SET IDENTITY_INSERT [dbo].[Muc] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (2, N'2019605100', N'4297f44b13955235245b2497399d7a93', N'sdjsadas@gmail.com', N'Phan Phan', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (3, N'123', N'e10adc3949ba59abbe56e057f20f883e', N'a234@gmail.com', N'Phan Tiên', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (30, N'2019605729', N'4297f44b13955235245b2497399d7a93', N'pvbkot1@gmail.com', N'Phan Bắc', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (31, N'2019605234', N'e10adc3949ba59abbe56e057f20f883e', N'lmc0406@gmail.com', N'Lê Mạnh Cường', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (32, N'2019605256', N'e10adc3949ba59abbe56e057f20f883e', N'thedat34@gmail.com', N'Nguyễn Thế Đạt', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (33, N'2019605123', N'e10adc3949ba59abbe56e057f20f883e', N'tranhuy4@gmail.com', N'Trần Văn Huy', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (34, N'2019605798', N'e10adc3949ba59abbe56e057f20f883e', N'leengas32@gamil.com', N'Lê Thị Nga', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (35, N'2019605354', N'e10adc3949ba59abbe56e057f20f883e', N'tranphu09@gamil.com', N'Trần Huy Phú', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (36, N'2019605999', N'e10adc3949ba59abbe56e057f20f883e', N'nhatanhtf@gamil.com', N'Nguyễn Nhật Ánh', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (37, N'2019605620', N'fcea920f7412b5da7be0cf42b8c93759', N'tuy.etlv9933.ba@gmail.com', N'Phan Ánh Tuyết', 1)
INSERT [dbo].[TaiKhoan] ([TaiKhoanId], [MSSV], [MatKhau], [Email], [HoTen], [TrangThai]) VALUES (38, N'2019605253', N'e10adc3949ba59abbe56e057f20f883e', N'hoaibaofi@gamil.com', N'Đặng Hoài Bảo', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[Bai]  WITH CHECK ADD  CONSTRAINT [FK_Bai_Chuong_ChuongId] FOREIGN KEY([ChuongId])
REFERENCES [dbo].[Chuong] ([ChuongId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bai] CHECK CONSTRAINT [FK_Bai_Chuong_ChuongId]
GO
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CauHoi_Chuong_ChuongId] FOREIGN KEY([ChuongId])
REFERENCES [dbo].[Chuong] ([ChuongId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CauHoi_Chuong_ChuongId]
GO
ALTER TABLE [dbo].[CauHoi_BaiLam]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_BaiLam_BaiLam_BaiLamId] FOREIGN KEY([BaiLamId])
REFERENCES [dbo].[BaiLam] ([BaiLamId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CauHoi_BaiLam] CHECK CONSTRAINT [FK_CauHoi_BaiLam_BaiLam_BaiLamId]
GO
ALTER TABLE [dbo].[CauHoi_BaiLam]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_BaiLam_CauHoi_De_CauHoi_DeId] FOREIGN KEY([CauHoi_DeId])
REFERENCES [dbo].[CauHoi_De] ([CauHoi_DeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CauHoi_BaiLam] CHECK CONSTRAINT [FK_CauHoi_BaiLam_CauHoi_De_CauHoi_DeId]
GO
ALTER TABLE [dbo].[CauHoi_De]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_De_CauHoi_CauHoiId] FOREIGN KEY([CauHoiId])
REFERENCES [dbo].[CauHoi] ([CauHoiId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CauHoi_De] CHECK CONSTRAINT [FK_CauHoi_De_CauHoi_CauHoiId]
GO
ALTER TABLE [dbo].[CauHoi_De]  WITH CHECK ADD  CONSTRAINT [FK_CauHoi_De_De_DeId] FOREIGN KEY([DeId])
REFERENCES [dbo].[De] ([DeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CauHoi_De] CHECK CONSTRAINT [FK_CauHoi_De_De_DeId]
GO
ALTER TABLE [dbo].[Chuong]  WITH CHECK ADD  CONSTRAINT [FK_Chuong_MonHoc_MonHocId] FOREIGN KEY([MonHocId])
REFERENCES [dbo].[MonHoc] ([MonHocId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chuong] CHECK CONSTRAINT [FK_Chuong_MonHoc_MonHocId]
GO
ALTER TABLE [dbo].[DanhSachThi]  WITH NOCHECK ADD  CONSTRAINT [FK_DanhSachThi_KyKiemTra_KyKiemTraId] FOREIGN KEY([KyKiemTraId])
REFERENCES [dbo].[KyKiemTra] ([KyKiemTraId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhSachThi] CHECK CONSTRAINT [FK_DanhSachThi_KyKiemTra_KyKiemTraId]
GO
ALTER TABLE [dbo].[DanhSachThi]  WITH NOCHECK ADD  CONSTRAINT [FK_DanhSachThi_TaiKhoan_TaiKhoanId] FOREIGN KEY([TaiKhoanId])
REFERENCES [dbo].[TaiKhoan] ([TaiKhoanId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhSachThi] CHECK CONSTRAINT [FK_DanhSachThi_TaiKhoan_TaiKhoanId]
GO
ALTER TABLE [dbo].[De]  WITH CHECK ADD  CONSTRAINT [FK_De_KyKiemTra_KyKiemTraId] FOREIGN KEY([KyKiemTraId])
REFERENCES [dbo].[KyKiemTra] ([KyKiemTraId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[De] CHECK CONSTRAINT [FK_De_KyKiemTra_KyKiemTraId]
GO
ALTER TABLE [dbo].[Muc]  WITH CHECK ADD  CONSTRAINT [FK_Muc_Bai_BaiId] FOREIGN KEY([BaiId])
REFERENCES [dbo].[Bai] ([BaiId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Muc] CHECK CONSTRAINT [FK_Muc_Bai_BaiId]
GO
USE [master]
GO
ALTER DATABASE [WebBaiGiang_CKC] SET  READ_WRITE 
GO
