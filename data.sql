USE [QuanLyBanhangdientu2]
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_ctcv]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  FUNCTION [dbo].[AUTO_ctcv]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(Mactcv) FROM ctChucVu) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(Mactcv, 3)) FROM ctChucVu
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'Ct00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'Ct0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_HD]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_HD]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaHD) FROM HopDong) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaHD, 3)) FROM HopDong
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'HD00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'HD0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_mabaohiem]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  FUNCTION [dbo].[AUTO_mabaohiem]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaBaoHiem) FROM  BaoHiem) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaBaoHiem, 3)) FROM BaoHiem
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'BH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'BH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_MaDH]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_MaDH]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaDH) FROM DonHang) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaDH, 3)) FROM DonHang
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'DH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'DH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_MAKH]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_MAKH]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaKH) FROM KhachHang) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaKH, 3)) FROM KhachHang
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'KH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'KH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_makho]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_makho]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(IDKho) FROM Kho) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(IDKho, 3)) FROM Kho
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'IK00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'IK0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_Maphieuchi]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_Maphieuchi]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaPhieuChi) FROM PhieuChi) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaPhieuChi, 3)) FROM PhieuChi
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'PC00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'PC0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maphieuthu]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maphieuthu]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaPhieuThu) FROM PhieuThu) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaPhieuThu, 3)) FROM PhieuThu
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'PT00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'PT0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_quyen]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[AUTO_quyen]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(Maquyen) FROM Quyen) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(Maquyen, 3)) FROM Quyen
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'QH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'QH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID_banner] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [text] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID_banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietdondathang]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdondathang](
	[MaDH] [varchar](5) NOT NULL,
	[MAHH] [varchar](5) NOT NULL,
	[Soluong] [int] NULL,
	[Giaban] [float] NULL,
	[Thanhtien] [bigint] NULL,
 CONSTRAINT [PK_Chitietdondathang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD_Nhap]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD_Nhap](
	[MAHD_Nhap] [varchar](6) NOT NULL,
	[MAHH] [varchar](5) NOT NULL,
	[SoLuong_Nhap] [int] NULL,
	[DonGia_Nhap] [float] NOT NULL,
	[Thanhtien] [float] NULL,
	[DonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietHD_Nhap] PRIMARY KEY CLUSTERED 
(
	[MAHD_Nhap] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD_Xuat]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD_Xuat](
	[MAHD_Xuat] [varchar](6) NOT NULL,
	[MAHH] [varchar](5) NOT NULL,
	[SoLuong_Xuat] [int] NULL,
	[DonGia_Xuat] [float] NULL,
	[ThanhTienXuat] [bigint] NULL,
	[DonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietHD_Xuat_1] PRIMARY KEY CLUSTERED 
(
	[MAHD_Xuat] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCv] [varchar](5) NOT NULL,
	[TenCv] [nvarchar](50) NULL,
	[LCB] [float] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](5) NOT NULL,
	[MaKH] [varchar](5) NULL,
	[Ngaydathang] [date] NULL,
	[Tongtien] [bigint] NULL,
	[Ngaythanhtoan] [nchar](10) NULL,
	[Tinhtrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [varchar](5) NOT NULL,
	[TenHH] [nvarchar](200) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[Duongdan] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Giabanle] [float] NOT NULL,
	[Giabansi] [float] NULL,
	[Gianhap] [float] NULL,
	[MaLoai] [varchar](5) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon_Nhap]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon_Nhap](
	[MAHD_Nhap] [varchar](6) NOT NULL,
	[MaNC] [varchar](5) NULL,
	[MANV] [varchar](5) NULL,
	[NgayLapHD] [date] NULL,
	[TongTien] [bigint] NULL,
	[Vat] [float] NULL,
	[TinhTrangNhap] [nvarchar](50) NULL,
	[TinhTrangNhapKho] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MAHD_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon_Xuat]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon_Xuat](
	[MAHD_Xuat] [varchar](6) NOT NULL,
	[MAKH] [varchar](5) NOT NULL,
	[MANV] [varchar](5) NULL,
	[NgayLap_Xuat] [date] NULL,
	[TongTien] [bigint] NULL,
	[Vat] [float] NULL,
	[TinhTrangXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon_Xuat_1] PRIMARY KEY CLUSTERED 
(
	[MAHD_Xuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](5) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Ngaysinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](20) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Maloaikh] [varchar](5) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[IDKho] [varchar](5) NOT NULL,
	[MAHH] [varchar](5) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Kho_1] PRIMARY KEY CLUSTERED 
(
	[IDKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [varchar](5) NOT NULL,
	[TenLoai] [nvarchar](200) NOT NULL,
	[Mota] [nvarchar](200) NULL,
	[Linkloaihang] [text] NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[Maloaikh] [varchar](5) NOT NULL,
	[Tenloaikh] [nvarchar](50) NULL,
	[soluongkh] [int] NULL,
 CONSTRAINT [PK_LoaiKhachHang] PRIMARY KEY CLUSTERED 
(
	[Maloaikh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](200) NULL,
	[MaNV] [varchar](5) NULL,
	[Hoatdong] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNC] [varchar](5) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DIACHI] [nvarchar](300) NULL,
	[SDT] [nvarchar](50) NULL,
	[Trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 17/08/2020 9:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [varchar](5) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgayVaoLam] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[MaCV] [varchar](5) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhomnguoidung2]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomnguoidung2](
	[Manhomnguoidung] [varchar](5) NOT NULL,
	[Tennhomnguoidung] [nvarchar](50) NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_Nhomnguoidung2] PRIMARY KEY CLUSTERED 
(
	[Manhomnguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phanquyennguoidung]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phanquyennguoidung](
	[UserName] [varchar](50) NOT NULL,
	[Manhomnguoidung] [varchar](5) NOT NULL,
	[Ghichu] [nvarchar](100) NULL,
 CONSTRAINT [PK_Phanquyennguoidung] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC,
	[Manhomnguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phanquyennhom]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phanquyennhom](
	[Manhomnguoidung] [varchar](5) NOT NULL,
	[Maquyen] [varchar](5) NOT NULL,
	[Quyenhan] [bit] NULL,
 CONSTRAINT [PK_Phanquyennhom] PRIMARY KEY CLUSTERED 
(
	[Manhomnguoidung] ASC,
	[Maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPhieuChi] [varchar](5) NOT NULL,
	[DoiTuong] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaNV] [varchar](5) NULL,
	[Sotienchi] [bigint] NULL,
	[NgayGhiNhan] [date] NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhieuChi] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPhieuThu] [varchar](5) NOT NULL,
	[DoiTuong] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaNV] [varchar](5) NULL,
	[Sotienchi] [bigint] NULL,
	[Ngayghinhan] [date] NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhieuThu] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[Maquyen] [varchar](5) NOT NULL,
	[Chucnangquyen] [nvarchar](100) NULL,
	[Mota] [nvarchar](100) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[Maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserKhachHang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserKhachHang](
	[UserName] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[MaKH] [varchar](5) NULL,
 CONSTRAINT [PK_UserKhachHang_1] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID_banner], [name], [link]) VALUES (1, N'baner1', N'https://i.imgur.com/xa1cqiV.jpg')
INSERT [dbo].[Banner] ([ID_banner], [name], [link]) VALUES (2, N'banner2', N'https://i.imgur.com/Yzjuawf.jpg')
INSERT [dbo].[Banner] ([ID_banner], [name], [link]) VALUES (3, N'banner3', N'https://i.imgur.com/cWn6U0x.png')
INSERT [dbo].[Banner] ([ID_banner], [name], [link]) VALUES (4, N'banner4', N'https://i.imgur.com/uTPXnk9.png')
INSERT [dbo].[Banner] ([ID_banner], [name], [link]) VALUES (5, N'banner5', N'https://i.imgur.com/I4MpOPy.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
INSERT [dbo].[Chitietdondathang] ([MaDH], [MAHH], [Soluong], [Giaban], [Thanhtien]) VALUES (N'DH001', N'HH011', 1, 1790000, 1790000)
INSERT [dbo].[Chitietdondathang] ([MaDH], [MAHH], [Soluong], [Giaban], [Thanhtien]) VALUES (N'DH001', N'HH012', 1, 3250000, 3250000)
INSERT [dbo].[ChiTietHD_Nhap] ([MAHD_Nhap], [MAHH], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien], [DonVi]) VALUES (N'HDN001', N'HH004', 60, 490000, 49000000, N'Thanh')
INSERT [dbo].[ChiTietHD_Nhap] ([MAHD_Nhap], [MAHH], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien], [DonVi]) VALUES (N'HDN002', N'HH008', 100, 670000, 67000000, N'Thanh')
INSERT [dbo].[ChiTietHD_Nhap] ([MAHD_Nhap], [MAHH], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien], [DonVi]) VALUES (N'HDN002', N'HH015', 100, 1760000, 176000000, N'Cái')
INSERT [dbo].[ChiTietHD_Nhap] ([MAHD_Nhap], [MAHH], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien], [DonVi]) VALUES (N'HDN002', N'HH016', 50, 750000, 37500000, N'Cái')
INSERT [dbo].[ChiTietHD_Nhap] ([MAHD_Nhap], [MAHH], [SoLuong_Nhap], [DonGia_Nhap], [Thanhtien], [DonVi]) VALUES (N'HDN002', N'HH018', 100, 670000, 67000000, N'Cái')
INSERT [dbo].[ChiTietHD_Xuat] ([MAHD_Xuat], [MAHH], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat], [DonVi]) VALUES (N'HDX001', N'HH004', 20, 495000, 9900000, N'Thanh')
INSERT [dbo].[ChiTietHD_Xuat] ([MAHD_Xuat], [MAHH], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat], [DonVi]) VALUES (N'HDX001', N'HH015', 30, 1790000, 53700000, N'Cái')
INSERT [dbo].[ChiTietHD_Xuat] ([MAHD_Xuat], [MAHH], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat], [DonVi]) VALUES (N'HDX002', N'HH015', 30, 1790000, 53700000, N'Cái')
INSERT [dbo].[ChiTietHD_Xuat] ([MAHD_Xuat], [MAHH], [SoLuong_Xuat], [DonGia_Xuat], [ThanhTienXuat], [DonVi]) VALUES (N'HDX002', N'HH018', 50, 690000, 34500000, N'Cái')
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV001', N'Quản Lý ', 130000)
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV002', N'Nhân Viên', 20000)
INSERT [dbo].[ChucVu] ([MaCv], [TenCv], [LCB]) VALUES (N'CV003', N'Admin', 3000)
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [Ngaydathang], [Tongtien], [Ngaythanhtoan], [Tinhtrang]) VALUES (N'DH001', N'KH008', CAST(N'2020-08-17' AS Date), 5040000, NULL, N'true')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH001', N'Ram Laptop Crucial DDR4 4GB Bus 2666', N'Thanh', N'https://i.imgur.com/jYgfio4.jpg', N'More speed. More battery life. More memory capacity. Fuel your next-gen laptop.

Ram Laptop Crucial DDR4 4GB Bus 2666 phá vỡ mọi giới hạn tốc độ của DDR3 khi bị thắt cổ chai. Cải thiện hiệu suất máy tính, tiết kiệm năng lượng hơn và dung lượng lớn hơn rất nhiều, hỗ trợ tất cả các dòng vi xử lý thế hệ mới nhất - Xung bus cực cao lên đến 2666 MT/s. - Khả năng tăng băng thông lên đến 30%. - Giảm tiêu thụ năng lượng lên đến 40% và kéo dài tuổi thọ pin. - Tăng tốc độ truy cập để cải thiện thông lượng dữ liệu tuần tự. - Tối ưu hóa cho các bộ xử lý và các nền tảng thế hệ mới nhất. - Dung lượng module lên đến 32GB. - Thời hạn bảo hành lên đến 36 tháng.', 490000, 450000, 430000, N'LH006')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH002', N'Ram Laptop Kingston DDR4 8GB Bus 2400', N'Thanh', N'https://i.imgur.com/hrlk69H.jpg', N'Ram Kingston DDR4 2400MHz tự hào là bộ nhớ có tần số nhanh nhất thế giới SO-DIMM - 2400MHz - đáp ứng mọi nhu cầu của mọi nền tảng máy tính. Tự động nhận dạng các nền tảng được cắm vào, không cần phải điều chỉnh bất kì thiết lập nào trong hệ thống BIOS. Vì vậy, bạn sẽ có được hiệu suất cực cao nhờ các công nghệ của các bộ xử lý AMD hoặc các công nghệ Intel CPU mới nhất một cách dễ dàng - ngay cả khi bạn là một Newbie. Ram Kingston DDR4 2400MHz mang đến cho bạn trải nghiệm cực tốt khi chơi Games hay dùng những chương trình nặng mà vẫn giữ hệ thống của bạn mát mẻ. Được thiết kế với điện áp thấp ở 1.2V cho tiêu thụ điện năng ít hơn, giảm sinh nhiệt và hoạt động yên tĩnh. Kiểu dáng mỏng đẹp làm nổi bật hệ thống máy tính của bạn.Nổi trội hơn hết, Ram Kingston DDR4 2400MHz mang lại hiệu năng cao với chi phí thấp. Được bảo hành 3 năm chính hãng và hỗ trợ kỹ thuật miễn phí với độ tin cậy huyền thoại.', 770000, 750000, 720000, N'LH001')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH003', N'Ram G.Skill Ripjaws DDR4 8GB Bus 2133MHz', N'Thanh', N'https://i.imgur.com/518Unoz.jpg', N'Ram Laptop G.SKILL Ripjaws DDR4 SO-DIMM tương thích với các máy tính xách tay chơi game hiệu suất cao và các máy tính có kích thước nhỏ hỗ trợ bộ nhớ DDR4 SO-DIMM. Đây là một trong những cách dễ nhất và hiệu quả nhất để nâng cấp máy tính của bạn, bất kể nhu cầu của bạn là chơi game hay làm việc.', 799000, 780000, 600000, N'LH001')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH004', N'Ram Laptop Samsung DDR4 4GB Bus 2400MHz', N'Thanh', N'https://i.imgur.com/AI376HI.jpg', N'Bạn đang cần giải pháp tăng cường bộ nhớ phù hợp nhất để nâng cao hiệu năng máy tính? Samsung chính là nhà tiên phong hàng đầu trong thị trường bộ nhớ DRAM được tất cả các nhà sản xuất máy tính chọn làm RAM OEM (Original Equipment Manufacturer) trong nhiều năm. Bạn sẽ được trải nghiệm những tính năng tiên tiến nhất của Ram Laptop Samsung DDR4 để đưa máy tính của bạn đến một tâm cao mới với tốc độ siêu cao và độ tiêu thụ điện năng cực thấp.', 495000, 492000, 490000, N'LH001')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH005', N'SSD Kingston A400 SATA 3 120GB', N'Thanh', N'https://i.imgur.com/GlHZy7k.jpg', N'Ổ cứng SSD Kingston A400 Series của Kingston giúp cải thiện tối đa hiệu năng của hệ thống hiện tại với thời gian khởi động, load các chương trình và dữ liệu được giảm tối đa. Bộ điều khiển Controller mới nhất cho tốc độ đọc và ghi lên đến 500MB/s và 450MB/s (bản 480GB), nhanh hơn gấp 10 lần so với ổ cứng HDD truyền thống, đáp ứng tất cả các nhu cầu của bạn. Ổ cứng SSD Kingston A400 hoạt động bằng bộ nhớ Flash, không có các bộ phận chuyển động cơ quay giúp tăng độ bền, hoạt động mát mẻ và không hề tạo ra bất kì tiếng động nào. Và đặc biệt là khả năng chống Sock cực tốt, rất lý tưởng cho máy tính xách tay và các thiết bị máy tính di động khác. Ổ cứng SSD Kingston A400 có nhiều dung lượng từ 120GB-480GB để cung cấp cho bạn tất cả không gian cần thiết cho các ứng dụng, video, hình ảnh và các tài liệu quan trọng khác. Ổ cứng SSD Kingston A400 được thiết kế để sử dụng trong máy tính để bàn và máy tính xách tay phổ thông, không dành cho các hệ thống Server.', 540000, 530000, 520000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH006', N'SSD Gigabyte 2.5-Inch SATA III 120GB', N'Thanh', N'https://i.imgur.com/hPoLvvN.jpg', N'SSD Toolbox luôn được Gigabyte cập nhật mới nhất, là một ứng dụng giúp người dùng theo dõi trạng thái SSD, cung cấp thông tin chung như tên Model, phiên bản FW, tình trạng sức khỏe, tối ưu hóa ổ đĩa và theo dõi nhiệt độ hoạt động thông qua các cảm biến. Hơn nữa, bạn cũng có thể xóa tất cả dữ liệu an toàn bằng chức năng Sercure Eraser. SSD Toolbox có thể được Download tại trang chủ của Gigabyte. ', 580000, 570000, 540000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH007', N'SSD Crucial BX500 3D NAND SATA III  120GB', N'Thanh', N'https://i.imgur.com/1fn4DsA.jpg', N'SSD Toolbox luôn được Gigabyte cập nhật mới nhất, là một ứng dụng giúp người dùng theo dõi trạng thái SSD, cung cấp thông tin chung như tên Model, phiên bản FW, tình trạng sức khỏe, tối ưu hóa ổ đĩa và theo dõi nhiệt độ hoạt động thông qua các cảm biến. Hơn nữa, bạn cũng có thể xóa tất cả dữ liệu an toàn bằng chức năng Sercure Eraser. SSD Toolbox có thể được Download tại trang chủ của Gigabyte. ', 590000, 580000, 530000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH008', N'SSD Transcend M.2 2242 SATA III 120GB', N'Thanh', N'https://i.imgur.com/srWrppz.jpg', N'Bạn đang tìm một sản phẩm giúp nâng hiệu năng tổng thể và khả năng lưu trữ của máy tính? Ổ cứng SSD Transcend M.2 2242 SATA III MTS420S 3D-NAND sẽ giúp bạn. Sản phẩm ổ cứng SSD Transcend M.2 2242 SATA III MTS420S 3D-NAND của Transcend có dung lượng lên tới 240GB, kích thước nhỏ gọn và chuẩn giao tiếp SATA III 6GB/s thế hệ mới, phù hợp với tất cả các dòng máy tính Laptop hỗ trợ cổng M.2 SATA III 2242, giúp giảm thiểu tối đa thời gian đáp ứng của hệ thống, kích thước nhỏ gọn. Giúp bạn làm việc nhanh hơn và tiết kiệm thời gian hơn.

', 690000, 680000, 670000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH009', N'SSD Crucial MX500 3D-NAND M.2 2280 SATA III 250GB', N'Thanh', N'https://i.imgur.com/SJWnT0K.jpg', N'Ổ cứng SSD Crucial MX500 3D NAND Sata III với công nghệ tiên tiến bậc nhất giúp tăng tốc độ, độ bền, và hiệu năng tổng thể hệ thống của bạn. Máy tính của bạn sẽ khởi động và load các chương trình cực nặng chỉ trong vài giây khi được trang bị công nghệ 3D flash NAND mới nhất với sự thành công đã được chứng minh của những dòng SSD MX-series trước đó. Ổ cứng SSD Crucial MX500 3D NAND Sata III không chỉ làm tăng hiệu năng hệ thống mà còn giúp bạn lưu trữ tất cả mọi dữ liệu quan trọng. Micron - Chất lượng bậc nhất thế giới', 1050000, 1030000, 1020000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH010', N'SSD Intel 545s Series M.2 2280 Sata III 256GB', N'Thanh', N'https://i.imgur.com/z3K2y4T.jpg', N'Dòng ổ cứng SSD Intel 545s Series của Intel là một giải pháp lưu trữ siêu nhỏ gọn, an toàn và tiết kiệm năng lượng, được thiết kế cho nhiều thiết bị như Ultrabook, máy tính để bàn và máy tính xách tay Laptop, mang lại sự kết hợp hoàn hảo giữa hiệu suất, chất lượng và độ tin cậy của Intel và tiết kiệm tối đa năng lượng để tối ưu hóa hiệu năng tổng thể máy tính của bạn.', 990000, 980000, 970000, N'LH002')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH011', N'CPU Intel Core i3-9100F Processor (6M Cache, 4.20 GHz)', N'Cái', N'https://i.imgur.com/Dtn5Lsj.jpg', N'Tương thích với các dòng bo mạch chủ sử dụng Intel 300 Series Chipset.
Xung nhịp mặc định 3.6 GHz.
Xung nhịp tối đa 4.2 GHz.
Bộ vi xử lý 4 nhân, 4 luồng.
Cache 6 MB.
Không tích hợp đồ họa, cần có VGA rời.
Hỗ trợ bộ nhớ DDR4, tối đa 64 GB.
Socket LGA 1151 (Bo mạch chủ 300 Series).
TDP 65W.
Tản nhiệt đi kèm sản phẩm.', 1790000, 1770000, 1760000, N'LH003')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH012', N'CPU Intel Core i3-10100 Processor (6M Cache, 3.6 GHz up to 4.30 GHz)', N'Cái', N'https://i.imgur.com/4YeIffx.jpg', N'Bảo hành 36 tháng
Tương thích với các dòng bo mạch chủ sử dụng Intel 400 Series Chipset.
Dòng vi xử lý đem lại trải nghiệm VR tuyệt vời hơn.
Xung nhịp mặc định 3.6 GHz, xung Boost tối đa 4.3 GHz.
Bộ vi xử lý 4 nhân, 8 luồng.
Cache 6 MB.
Tích hợp đồ họa Intel UHD Graphics 630.
Hỗ trợ bộ nhớ DDR4, tối đa 128 GB.
Socket LGA 1200 (Bo mạch chủ 400 Series).
TDP 65W.
Tản nhiệt đi kèm sản phẩm.', 3250000, 3240000, 3220000, N'LH003')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH013', N'CPU Intel Core I3-8100 Processor (6M Cache, 3.60 GHz)', N'Cái', N'https://i.imgur.com/iDK203Y.jpg', N'Bảo mật tích hợp bổ sung thêm một tầng bảo vệ trọng yếu, giúp đơn giản hóa và đảm bảo an toàn khi đăng nhập bằng mật khẩu, trình duyệt và thanh toán trực tuyến3. Bạn có thể đăng nhập bằng ánh mắt, giọng nói hay dấu vân tay để đảm bảo bảo mật “cứng như đá”3, nhanh chóng và dễ dàng. Lưu mật khẩu, thông tin cá nhân và tự động điền thông tin bằng một mật khẩu chính. Ngoài ra còn có màn hình cảm ứng, ra lệnh bằng giọng nói và các tùy chọn bút stylus giúp tương tác tự nhiên và trực quan.', 3290000, 3270000, 3220000, N'LH003')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH014', N'CPU Intel Core i5-9400F Processor (9M Cache, 2.9 GHz up to 4.10 GHz)', N'Cái', N'https://i.imgur.com/k3ZMb6d.jpg', N'
Bảo hành 36 tháng
Tương thích với các dòng bo mạch chủ sử dụng Intel 300 Series Chipset.
Dòng vi xử lý đem lại trải nghiệm VR tuyệt vời hơn.
Xung nhịp mặc định 2.9 GHz, xung Boost tối đa 4.1 GHz.
Bộ vi xử lý 6 nhân, 6 luồng.
Cache 9 MB.
Không tích hợp card đồ họa.
Hỗ trợ bộ nhớ DDR4, tối đa 64 GB.
Socket LGA 1151 (Bo mạch chủ 300 Series).
TDP 65W.
Tản nhiệt đi kèm sản phẩm.', 3790000, 3780000, 3750000, N'LH003')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH015', N'Case Xigmatek Gemini – RGB Led Strip (No Fan)', N'Cái', N'https://i.imgur.com/h9HBDYT.jpg', N'
Vật liệu: SECC phủ đen, Plastic ABS
Kích thước: 403 x 200 x 397 mm
Hỗ trợ: 2.5 “” x 2 / 3.5″” x 2
Khe mở rộng: 4 slots
Hỗ trợ Mainboard: Micro-ATX, ITX
Cổng kết nối: USB3.0 x 1 – USB2.0 x1 – Audio in/out x 1 (HD Audio)
Hỗ trợ tản nhiệt CPU 160mm
Hỗ trợ VGA 320mm', 1790000, 1770000, 1760000, N'LH004')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH016', N'Case Deepcool E-Shield ATX', N'Cái', N'https://i.imgur.com/ppe09pL.jpg', N'
Vật liệu: SECC phủ đen, Plastic ABS
Kích thước: 403 x 200 x 397 mm
Hỗ trợ: 2.5 “” x 2 / 3.5″” x 2
Khe mở rộng: 4 slots
Hỗ trợ Mainboard: Micro-ATX, ITX
Cổng kết nối: USB3.0 x 1 – USB2.0 x1 – Audio in/out x 1 (HD Audio)
Hỗ trợ tản nhiệt CPU 160mm
Hỗ trợ VGA 320mm', 770000, 760000, 750000, N'LH004')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH017', N'Case Cooler Master MasterCase H500M RGB – ATX', N'Cái', N'https://i.imgur.com/C2ehSRH.jpg', N'Mặt trước : 3 x 120mm / 140mm hoặc 2 x 200mm fan (2 x 200mm ARGB Fan đi kèm, tốc độ 800RPM / Kết nối: 3Pin + ARGB 3pin )Mặt trên : 3 x 120mm hoặc 2 x 140mm / 200mm fan
Mặt sau: 1 x 120mm hoặc 1 x 140mm fan (1 x 140mm fan đi kèm, tốc độ: 1200RPM / Kết nối: 3Pin)

Các tùy chọn két nước
Trước:  Tối đa 360mm
Sau -Tối đa 120mm/ 140mm
Trên – Tối đa 360mm', 530000, 520000, 500000, N'LH004')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [DonViTinh], [Duongdan], [MoTa], [Giabanle], [Giabansi], [Gianhap], [MaLoai]) VALUES (N'HH018', N'Case Cooler Master MasterBox TD500 Mesh ', N'Cái', N'https://i.imgur.com/gM8Sr0E.jpg', N'Mặt trước : 3 x 120mm / 140mm hoặc 2 x 200mm fan (2 x 200mm ARGB Fan đi kèm, tốc độ 800RPM / Kết nối: 3Pin + ARGB 3pin )Mặt trên : 3 x 120mm hoặc 2 x 140mm / 200mm fan
Mặt sau: 1 x 120mm hoặc 1 x 140mm fan (1 x 140mm fan đi kèm, tốc độ: 1200RPM / Kết nối: 3Pin)

Các tùy chọn két nước
Trước:  Tối đa 360mm
Sau -Tối đa 120mm/ 140mm
Trên – Tối đa 360mm', 690000, 680000, 670000, N'LH004')
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TongTien], [Vat], [TinhTrangNhap], [TinhTrangNhapKho]) VALUES (N'HDN001', N'NC001', N'NV007', CAST(N'2020-08-17' AS Date), 49000000, 0, N'Đã Thanh Toán', N'Đã Nhập Kho')
INSERT [dbo].[HoaDon_Nhap] ([MAHD_Nhap], [MaNC], [MANV], [NgayLapHD], [TongTien], [Vat], [TinhTrangNhap], [TinhTrangNhapKho]) VALUES (N'HDN002', N'NC001', N'NV007', CAST(N'2020-08-17' AS Date), 347500000, 0, N'Đã Thanh Toán', N'Đã Nhập Kho')
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TongTien], [Vat], [TinhTrangXuat]) VALUES (N'HDX001', N'KH007', N'NV006', CAST(N'2020-08-17' AS Date), 63600000, 0, N'Đã  Thanh Toán')
INSERT [dbo].[HoaDon_Xuat] ([MAHD_Xuat], [MAKH], [MANV], [NgayLap_Xuat], [TongTien], [Vat], [TinhTrangXuat]) VALUES (N'HDX002', N'KH018', N'NV006', CAST(N'2020-08-17' AS Date), 88200000, 0, N'Đã  Thanh Toán')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH007', N'Đặng Anh Tuấn', CAST(N'2020-12-11' AS Date), N'Tp HCM', N'0938942207', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH008', N'Lý Xuân Thành', CAST(N'2020-05-08' AS Date), N'Tp HCM', N'0932497270', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH009', N'Đạt Văn Lê', CAST(N'2020-05-08' AS Date), N'Vĩnh Long', N'0398242340', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH010', N'Đặng Thương', CAST(N'2020-05-08' AS Date), N'Tp hcm', N'0398242340', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH011', N'Lê Đặng Trường', CAST(N'2020-07-08' AS Date), N'Tp hcm', N'00932438541', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH015', N'Mai Thành Nhân 2', CAST(N'2020-05-09' AS Date), N'106 nguyễn quý anh', N'932424252', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH016', N'Trần Văn Toàn', CAST(N'2020-08-22' AS Date), N'Long An', N'092342252', N'Nữ', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH017', N'Nguyễn Mộng Thảo', CAST(N'2020-08-22' AS Date), N'Vũng Tàu', N'0723724090', N'Nam', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH018', N'Mia Như Ngọc', CAST(N'2020-12-11' AS Date), N'Vũng Tàu', N'0932497270', N'Nữ', N'LK003')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Ngaysinh], [DiaChi], [SDT], [GioiTinh], [Maloaikh]) VALUES (N'KH019', N'Lý Xuân Thành Nua', CAST(N'2020-08-13' AS Date), N'Tp HCm', N'0932423241', N'Nam', N'LK003')
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK001', N'HH001', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK002', N'HH002', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK003', N'HH003', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK004', N'HH004', 40)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK005', N'HH005', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK006', N'HH008', 100)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK007', N'HH009', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK008', N'HH010', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK009', N'HH011', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK010', N'HH013', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK011', N'HH014', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK012', N'HH015', 40)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK013', N'HH016', 50)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK014', N'HH017', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK015', N'HH018', 50)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK016', N'HH016', 50)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK017', N'HH017', 0)
INSERT [dbo].[Kho] ([IDKho], [MAHH], [SoLuong]) VALUES (N'IK018', N'HH018', 50)
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH001', N'Ram', N'Khả nặng tản nhiệt tốt ,Giá cả phù  hợp', N'https://i.imgur.com/3O4UNEX.png')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH002', N'SSD', N'Tăng khả năng xử lý của máy tính', N'https://i.imgur.com/e2O5Xl5.jpg')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH003', N'CPU', NULL, N'https://i.imgur.com/ktK10UX.jpg')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH004', N'Case Máy Tính', N'Bền Chắc chịu nhiệt tốt', N'https://i.imgur.com/JMxn2jb.jpg')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH006', N'Man Hinh Vi Tinh', NULL, N'https://i.imgur.com/3O4UNEX.png')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH007', N'Pc 1 2', NULL, N'https://i.imgur.com/JMxn2jb.jpg')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH008', N'Máy Tính ', N'a', N'https://i.imgur.com/3O4UNEX.png')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai], [Mota], [Linkloaihang]) VALUES (N'LH010', N'Card màn hình N', N'năng xuất làm việc cao', N'https://i.imgur.com/3O4UNEX.png')
INSERT [dbo].[LoaiKhachHang] ([Maloaikh], [Tenloaikh], [soluongkh]) VALUES (N'LK002', N'Bán Buôn', NULL)
INSERT [dbo].[LoaiKhachHang] ([Maloaikh], [Tenloaikh], [soluongkh]) VALUES (N'LK003', N'Bán Lẻ', NULL)
INSERT [dbo].[LoaiKhachHang] ([Maloaikh], [Tenloaikh], [soluongkh]) VALUES (N'LK004', N'A', 0)
INSERT [dbo].[LoaiKhachHang] ([Maloaikh], [Tenloaikh], [soluongkh]) VALUES (N'LK005', N'Vip', 0)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [MaNV], [Hoatdong]) VALUES (N'bao', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'NV008', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [MaNV], [Hoatdong]) VALUES (N'datnun', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'NV011', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [MaNV], [Hoatdong]) VALUES (N'nhan', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'NV006', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [MaNV], [Hoatdong]) VALUES (N'nhandycu', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'NV009', 1)
INSERT [dbo].[NguoiDung] ([UserName], [PassWord], [MaNV], [Hoatdong]) VALUES (N'nhanvien2', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'NV007', 0)
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC001', N'Xgear', N'Quận 3 Tp HCM', N'0932497270', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC002', N'Memory Zone', N'4C Đồng Xoài, Phường 13, Tân Bình, Thành phố Hồ Chí Minh 736464', N'0287301387', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC003', N'Vi Tính Nhất Thiên - Công Ty TNHH Kỹ Thuật Tin Học Nhất Thiên', N'232/61A Lý Thường Kiệt, P. 14, Q. 10, Tp. Hồ Chí Minh (TPHCM)', N'0903179499', N'Đang giao dịch')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC004', N'Phần Mềm Phúc Tường - Công Ty TNHH Phúc Tường', N'Số 64 Đ. D9, KDC Chánh Nghĩa, P. Chánh Nghĩa, Tp. Thủ Dầu Một, Bình Dương', N'0908010077', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC005', N'Máy Tính Tiên Phong - Công Ty TNHH TM DV Tin Học - Viễn Thông Tiên Phong', N'D78 Trương Hán Siêu, P. Phú Thủy, TP. Phan Thiết, Bình Thuận', N'0913185827', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC006', N'Máy Vi Tính Đông Quân - Công Ty TNHH Thương Mại Dịch Vụ Vi Tính Đông Quân', N'1011/21 Lê Hồng Phong, P. Phú Thọ, TP. Thủ Dầu Một, Bình Dương1011/21 Lê Hồng Phong, P. Phú Thọ, TP. Thủ Dầu Một, Bình Dương', N'0937505118', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC007', N'Xgear VN 1', N'Tp HCM', N'0832324124', N'Đã Thanh Toán')
INSERT [dbo].[NhaCungCap] ([MaNC], [TenNCC], [DIACHI], [SDT], [Trangthai]) VALUES (N'NC008', N'22', N'121', N'121', N'Đang giao dịch')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV006', N'Đào Tuấn Hưng', N'Nam', CAST(N'1999-08-12' AS Date), N'Vũng Tàu', N'0938942207', CAST(N'1999-08-12' AS Date), NULL, N'CV002', N'Còn Làm')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV007', N'Đặng Trường', N'Nam', CAST(N'1999-08-12' AS Date), N'An nhứt', N'121212', CAST(N'1999-08-12' AS Date), NULL, N'CV001', N'Còn Làm')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV008', N'Lý Xuân Thành', N'Nam', CAST(N'1999-08-12' AS Date), N'Tp HCm', N'12121', CAST(N'1999-08-12' AS Date), NULL, N'CV002', N'Còn Làm')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV009', N'Mai Thành Nhân', N'Nam', CAST(N'1999-08-12' AS Date), N'Vũng T àu', N'0932407270', CAST(N'1999-08-12' AS Date), NULL, N'CV003', N'Còn Làm')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV010', N'Lê Thanh Trang', N'Nam', CAST(N'1999-08-12' AS Date), N'Tp Hcm', N'0938942207', CAST(N'1999-08-12' AS Date), NULL, N'CV001', N'Còn Làm')
INSERT [dbo].[NhanVien] ([MANV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [NgayVaoLam], [NgayKetThuc], [MaCV], [TinhTrang]) VALUES (N'NV011', N'Bùi VĂn Đạt', N'Nam', CAST(N'1999-08-12' AS Date), N'Vũng Tàu', N'093242342', CAST(N'1999-08-12' AS Date), NULL, N'CV002', N'Còn Làm')
INSERT [dbo].[Nhomnguoidung2] ([Manhomnguoidung], [Tennhomnguoidung], [Mota]) VALUES (N'ND001', N'Nhóm nhân viên', N'Dành cho nhân viên thực hiện bán hàng cho khách hàng')
INSERT [dbo].[Nhomnguoidung2] ([Manhomnguoidung], [Tennhomnguoidung], [Mota]) VALUES (N'ND002', N'Nhóm quản lý', N'Dành cho nhân viên quản lý có chức vụ quản lý về  việc nhập hàng hóa và nhà cung cấp')
INSERT [dbo].[Nhomnguoidung2] ([Manhomnguoidung], [Tennhomnguoidung], [Mota]) VALUES (N'ND003', N'Nhóm admin', N'Dành cho kỹ thuật có thể  kiểm soát phân quyền ,tạo user cho nhân viên và quản lý ')
INSERT [dbo].[Phanquyennguoidung] ([UserName], [Manhomnguoidung], [Ghichu]) VALUES (N'bao', N'ND002', NULL)
INSERT [dbo].[Phanquyennguoidung] ([UserName], [Manhomnguoidung], [Ghichu]) VALUES (N'datnun', N'ND001', NULL)
INSERT [dbo].[Phanquyennguoidung] ([UserName], [Manhomnguoidung], [Ghichu]) VALUES (N'nhan', N'ND001', NULL)
INSERT [dbo].[Phanquyennguoidung] ([UserName], [Manhomnguoidung], [Ghichu]) VALUES (N'nhandycu', N'ND003', NULL)
INSERT [dbo].[Phanquyennguoidung] ([UserName], [Manhomnguoidung], [Ghichu]) VALUES (N'nhanvien2', N'ND002', NULL)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND001', N'QH001', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND001', N'QH006', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND001', N'QH007', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND001', N'QH010', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND001', N'QH014', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH002', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH003', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH004', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH005', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH007', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH011', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND002', N'QH013', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND003', N'QH008', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND003', N'QH009', 1)
INSERT [dbo].[Phanquyennhom] ([Manhomnguoidung], [Maquyen], [Quyenhan]) VALUES (N'ND003', N'QH012', 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC002', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 340000000, CAST(N'2020-08-16' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC003', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 44300000, CAST(N'2020-08-17' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC004', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 63680000, CAST(N'2020-08-17' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC005', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 72800000, CAST(N'2020-08-17' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC006', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 693000000, CAST(N'2020-08-17' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [NgayGhiNhan], [GhiChu]) VALUES (N'PC007', N'Nhà Cung Cấp', N'Đã Thanh Toán', N'NV007', 347500000, CAST(N'2020-08-17' AS Date), N'Đã Thanh Toán')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT001', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 30290000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT002', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 16030000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT003', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 49728000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT004', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 142600000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT005', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 37980000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT006', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 25900000, CAST(N'2020-08-14' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT007', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 116570000, CAST(N'2020-08-15' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT008', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 63600000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [DoiTuong], [TrangThai], [MaNV], [Sotienchi], [Ngayghinhan], [GhiChu]) VALUES (N'PT009', N'Khách Hàng', N'Đã Thanh Toán', N'NV006', 88200000, CAST(N'2020-08-17' AS Date), N'Bán Hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH001', N'Quản  lý dach sách khách hàng', N'Thêm xóa sửa trên bảng khánh hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH002', N'Quản lý dach sách nhà cung cấp', N'Thêm xóa sửa nhà cung cấp')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH003', N'Quản lý dach sách loại hàng', N'Thêm xóa sửa loại hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH004', N'Quản lý dach sách hàng hóa', N'Thêm xóa sửa hàng hóa')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH005', N'Quản lý  dach sách nhập hàng', N'Thêm xóa sửa nhập hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH006', N'Quản lý  dach sách xuất hàng', N'Thêm xóa sửa xuất hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH007', N'Quản lý kho ', N'Xem kho  ')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH008', N'Quản Lý User Người Dùng', N'Thêm xóa sửa user người dùng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH009', N'Quản lý nhân viên', N'Thêm xóa sửa nhân viên')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH010', N'Quản lý duyệt đơn hàng', N'Thêm xóa sửa duyệt đơn hàng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH011', N'Quản lý thống kê', N'Quản lý dach sách các biểu mẫu thống kê')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH012', N'Quản lý phân quyền', N'Quản lý phân quyền người dùng')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH013', N'Quản Lý Phiếu Chi', N'Quản lý phiếu chi')
INSERT [dbo].[Quyen] ([Maquyen], [Chucnangquyen], [Mota]) VALUES (N'QH014', N'Quản Lý Phiếu Thu', N'Quản lý phiếu thu')
INSERT [dbo].[UserKhachHang] ([UserName], [Password], [MaKH]) VALUES (N'nhandycu@gmail.com', N'nhan123456', N'KH008')
INSERT [dbo].[UserKhachHang] ([UserName], [Password], [MaKH]) VALUES (N'nhandycu28@gmail.com', N'nhan123456', N'KH007')
ALTER TABLE [dbo].[Chitietdondathang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdondathang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[Chitietdondathang] CHECK CONSTRAINT [FK_Chitietdondathang_DonHang]
GO
ALTER TABLE [dbo].[Chitietdondathang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdondathang_HangHoa] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[Chitietdondathang] CHECK CONSTRAINT [FK_Chitietdondathang_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Nhap_HangHoa] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] CHECK CONSTRAINT [FK_ChiTietHD_Nhap_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Nhap_HoaDon_Nhap] FOREIGN KEY([MAHD_Nhap])
REFERENCES [dbo].[HoaDon_Nhap] ([MAHD_Nhap])
GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] CHECK CONSTRAINT [FK_ChiTietHD_Nhap_HoaDon_Nhap]
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Xuat_HangHoa] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] CHECK CONSTRAINT [FK_ChiTietHD_Xuat_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_Xuat_HoaDon_Xuat] FOREIGN KEY([MAHD_Xuat])
REFERENCES [dbo].[HoaDon_Xuat] ([MAHD_Xuat])
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] CHECK CONSTRAINT [FK_ChiTietHD_Xuat_HoaDon_Xuat]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_LoaiHang] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_LoaiHang]
GO
ALTER TABLE [dbo].[HoaDon_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhap_NhaCungCap] FOREIGN KEY([MaNC])
REFERENCES [dbo].[NhaCungCap] ([MaNC])
GO
ALTER TABLE [dbo].[HoaDon_Nhap] CHECK CONSTRAINT [FK_HoaDon_Nhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDon_Nhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhap_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[HoaDon_Nhap] CHECK CONSTRAINT [FK_HoaDon_Nhap_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Xuat_KhachHang1] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon_Xuat] CHECK CONSTRAINT [FK_HoaDon_Xuat_KhachHang1]
GO
ALTER TABLE [dbo].[HoaDon_Xuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Xuat_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[HoaDon_Xuat] CHECK CONSTRAINT [FK_HoaDon_Xuat_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiKhachHang] FOREIGN KEY([Maloaikh])
REFERENCES [dbo].[LoaiKhachHang] ([Maloaikh])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_HangHoa1] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_HangHoa1]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCv])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[Phanquyennguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Phanquyennguoidung_NguoiDung1] FOREIGN KEY([UserName])
REFERENCES [dbo].[NguoiDung] ([UserName])
GO
ALTER TABLE [dbo].[Phanquyennguoidung] CHECK CONSTRAINT [FK_Phanquyennguoidung_NguoiDung1]
GO
ALTER TABLE [dbo].[Phanquyennguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Phanquyennguoidung_Nhomnguoidung2] FOREIGN KEY([Manhomnguoidung])
REFERENCES [dbo].[Nhomnguoidung2] ([Manhomnguoidung])
GO
ALTER TABLE [dbo].[Phanquyennguoidung] CHECK CONSTRAINT [FK_Phanquyennguoidung_Nhomnguoidung2]
GO
ALTER TABLE [dbo].[Phanquyennhom]  WITH CHECK ADD  CONSTRAINT [FK_Phanquyennhom_Nhomnguoidung2] FOREIGN KEY([Manhomnguoidung])
REFERENCES [dbo].[Nhomnguoidung2] ([Manhomnguoidung])
GO
ALTER TABLE [dbo].[Phanquyennhom] CHECK CONSTRAINT [FK_Phanquyennhom_Nhomnguoidung2]
GO
ALTER TABLE [dbo].[Phanquyennhom]  WITH CHECK ADD  CONSTRAINT [FK_Phanquyennhom_Quyen] FOREIGN KEY([Maquyen])
REFERENCES [dbo].[Quyen] ([Maquyen])
GO
ALTER TABLE [dbo].[Phanquyennhom] CHECK CONSTRAINT [FK_Phanquyennhom_Quyen]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_NhanVien]
GO
ALTER TABLE [dbo].[UserKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_UserKhachHang_KhachHang1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[UserKhachHang] CHECK CONSTRAINT [FK_UserKhachHang_KhachHang1]
GO
/****** Object:  Trigger [dbo].[trigThemTinhTien]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trigThemTinhTien] on [dbo].[ChiTietHD_Nhap]
after insert,update
as

	update HoaDon_Nhap set TongTien=(select sum(ThanhTien) from ChiTietHD_Nhap where MAHD_Nhap=i.MAHD_Nhap) from inserted i where HoaDon_Nhap.MAHD_Nhap=i.MAHD_Nhap

GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] ENABLE TRIGGER [trigThemTinhTien]
GO
/****** Object:  Trigger [dbo].[trigThemTinhTienkhixoa]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[trigThemTinhTienkhixoa] on [dbo].[ChiTietHD_Nhap]
for delete
as

	update HoaDon_Nhap set TongTien=(select sum(ThanhTien) from ChiTietHD_Nhap where MAHD_Nhap=i.MAHD_Nhap) from deleted i where HoaDon_Nhap.MAHD_Nhap=i.MAHD_Nhap

GO
ALTER TABLE [dbo].[ChiTietHD_Nhap] ENABLE TRIGGER [trigThemTinhTienkhixoa]
GO
/****** Object:  Trigger [dbo].[trigThemTinhTienhoadonxuat]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trigThemTinhTienhoadonxuat] on [dbo].[ChiTietHD_Xuat]
after insert,update
as

	update HoaDon_Xuat set TongTien=(select sum(ThanhTienXuat) from ChiTietHD_Xuat where MAHD_Xuat=i.MAHD_Xuat) from inserted i where HoaDon_Xuat.MAHD_Xuat=i.MAHD_Xuat
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] ENABLE TRIGGER [trigThemTinhTienhoadonxuat]
GO
/****** Object:  Trigger [dbo].[trigThemTinhTienkhixoahoadonxuat]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trigThemTinhTienkhixoahoadonxuat] on [dbo].[ChiTietHD_Xuat]
for delete
as

	update HoaDon_Xuat set TongTien=(select sum(ThanhTienXuat) from ChiTietHD_Xuat where MAHD_Xuat=i.MAHD_Xuat) from deleted i where HoaDon_Xuat.MAHD_Xuat=i.MAHD_Xuat
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] ENABLE TRIGGER [trigThemTinhTienkhixoahoadonxuat]
GO
/****** Object:  Trigger [dbo].[updatekhosaukhihuyxuathang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[updatekhosaukhihuyxuathang] ON [dbo].[ChiTietHD_Xuat] for delete AS 
BEGIN

if((select TinhTrangXuat from HoaDon_Xuat,deleted where deleted.MAHD_Xuat=HoaDon_Xuat.MAHD_Xuat)!=N'Đã  Thanh Toán')
	UPDATE Kho
	SET SoLuong = SoLuong+(
		SELECT SoLuong_Xuat
		FROM deleted
		WHERE MAHH = Kho.MAHH
	)
	FROM Kho
	JOIN deleted ON Kho.MAHH = deleted.MAHH
	else
	print 'huy bo' 
	
END
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] ENABLE TRIGGER [updatekhosaukhihuyxuathang]
GO
/****** Object:  Trigger [dbo].[updatekhosaukhixuathang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[updatekhosaukhixuathang] ON [dbo].[ChiTietHD_Xuat] AFTER INSERT AS 
BEGIN
	UPDATE Kho
	SET SoLuong = SoLuong-(
		SELECT SoLuong_Xuat
		FROM inserted
		WHERE MAHH = Kho.MAHH
	)
	FROM Kho
	JOIN inserted ON Kho.MAHH = inserted.MAHH
END
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] ENABLE TRIGGER [updatekhosaukhixuathang]
GO
/****** Object:  Trigger [dbo].[updatesuaxuathang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[updatesuaxuathang] on [dbo].[ChiTietHD_Xuat] after update AS
BEGIN
   UPDATE Kho SET SoLuong = SoLuong -
	   (SELECT SoLuong_Xuat FROM inserted WHERE MAHH = Kho.MAHH) +
	   (SELECT SoLuong_Xuat FROM deleted WHERE MAHH= Kho.MAHH)
   FROM Kho
   JOIN deleted ON Kho.MAHH = deleted.MAHH
end
GO
ALTER TABLE [dbo].[ChiTietHD_Xuat] ENABLE TRIGGER [updatesuaxuathang]
GO
/****** Object:  Trigger [dbo].[them1donhang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create trigger [dbo].[them1donhang]	on [dbo].[DonHang] after insert as
	begin
			declare @madh varchar(5);
		
			
			select @madh=dbo.AUTO_MaDH();

			update  DonHang set MaDH=@madh where MaDH=''
		
			
		END

GO
ALTER TABLE [dbo].[DonHang] ENABLE TRIGGER [them1donhang]
GO
/****** Object:  Trigger [dbo].[themkhohangmoi]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[themkhohangmoi]	on [dbo].[HangHoa] after insert as
	begin
			declare @mahh varchar(50);
			declare @soluong int;
			select @mahh=i.MaHH  from inserted i;
			select @soluong=0;

			insert into Kho (IDKho,MAHH,SoLuong) values('',@mahh,@soluong)
		END
GO
ALTER TABLE [dbo].[HangHoa] ENABLE TRIGGER [themkhohangmoi]
GO
/****** Object:  Trigger [dbo].[them1khachhang]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[them1khachhang]	on [dbo].[KhachHang] after insert as
	begin
			declare @makh varchar(5);
		
			
			select @makh=dbo.AUTO_MAKH();

			update  KhachHang set MaKH=@makh where MaKH=''
		
			
		END

GO
ALTER TABLE [dbo].[KhachHang] ENABLE TRIGGER [them1khachhang]
GO
/****** Object:  Trigger [dbo].[them1kho]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[them1kho]	on [dbo].[Kho] after insert as
	begin
			declare @makho varchar(5);
		
			
			select @makho=dbo.AUTO_makho();

			update  Kho set IDKho=@makho where IDKho=''
		
			
		END

GO
ALTER TABLE [dbo].[Kho] ENABLE TRIGGER [them1kho]
GO
/****** Object:  Trigger [dbo].[them1maphieuchi]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[them1maphieuchi]	on [dbo].[PhieuChi] after insert as
	begin
			declare @mapt varchar(5);
		
			
			select @mapt=dbo.AUTO_Maphieuchi();

			update  PhieuChi set  MaPhieuChi=@mapt where MaPhieuChi=''
		
			
		END


		select * from Phanquyennhom

		select * from Quyen,Phanquyennhom where Quyen.Maquyen=Phanquyennhom.Maquyen and Manhomnguoidung='NH1'



		select * from Quyen
GO
ALTER TABLE [dbo].[PhieuChi] ENABLE TRIGGER [them1maphieuchi]
GO
/****** Object:  Trigger [dbo].[them1maphieuthu]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[them1maphieuthu]	on [dbo].[PhieuThu] after insert as
	begin
			declare @mapt varchar(5);
		
			
			select @mapt=dbo.AUTO_maphieuthu();

			update  PhieuThu set MaPhieuThu=@mapt where MaPhieuThu=''
		
			
		END
GO
ALTER TABLE [dbo].[PhieuThu] ENABLE TRIGGER [them1maphieuthu]
GO
/****** Object:  Trigger [dbo].[them1quyen]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[them1quyen]	on [dbo].[Quyen] after insert as
	begin
			declare @maquyen varchar(5);
		
			
			select @maquyen=dbo.AUTO_quyen();

			update  Quyen set  Maquyen=@maquyen where Maquyen=''
		
			
		END
GO
ALTER TABLE [dbo].[Quyen] ENABLE TRIGGER [them1quyen]
GO
/****** Object:  Trigger [dbo].[themkhangmoi]    Script Date: 17/08/2020 9:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[themkhangmoi]	on [dbo].[UserKhachHang] after insert as
	begin
			declare @makh varchar(5);
			declare @makh2 varchar(5);
			declare @maloaikh varchar(5);
			declare @username varchar(50);
			select @makh=''
			select @username=i.UserName  from inserted i;
			select @maloaikh='LK003';
			
		
			select @makh2=dbo.AUTO_MAKH();
			insert into KhachHang(MaKH,TenKH,Ngaysinh,DiaChi,SDT,GioiTinh,Maloaikh) values(@makh,'',null,'','','',@maloaikh)
			
			
			update UserKhachHang set MaKH=@makh2 where UserName=@username
			
		
		END

GO
ALTER TABLE [dbo].[UserKhachHang] ENABLE TRIGGER [themkhangmoi]
GO
