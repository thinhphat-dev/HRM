USE [HRM]
GO
/****** Object:  Table [dbo].[BangChamCong]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangChamCong](
	[MaBCC] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[Thang] [date] NOT NULL,
	[NgayLam] [date] NOT NULL,
 CONSTRAINT [pk_bcc] PRIMARY KEY CLUSTERED 
(
	[MaBCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](255) NOT NULL,
 CONSTRAINT [pk_cv] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[MaLuong] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[Thang] [date] NOT NULL,
	[PCCOM] [int] NOT NULL,
	[PCXang] [int] NOT NULL,
	[PCKhac] [int] NOT NULL,
	[BHYT] [int] NOT NULL,
	[BHXH] [int] NOT NULL,
 CONSTRAINT [pk_luong] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongUng]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongUng](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [date] NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[SoTien] [float] NULL,
 CONSTRAINT [pk_luongUng] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](255) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[CCCD] [nvarchar](255) NOT NULL,
	[QueQuan] [nvarchar](255) NOT NULL,
	[Hinh] [nvarchar](255) NOT NULL,
	[MaPB] [int] NOT NULL,
	[MaCV] [int] NOT NULL,
	[Luong] [float] NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
 CONSTRAINT [pk_nv] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [int] IDENTITY(1,1) NOT NULL,
	[TenPB] [nvarchar](255) NOT NULL,
 CONSTRAINT [pk_pb] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [date] NOT NULL,
	[TenPB] [nvarchar](255) NULL,
	[TongChi] [float] NULL,
 CONSTRAINT [pk_thongke] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongVaKyLuat]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongVaKyLuat](
	[MaTVKL] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[Loai] [bit] NOT NULL,
	[SoTien] [float] NOT NULL,
	[Thang] [date] NOT NULL,
	[LyDo] [nvarchar](255) NULL,
 CONSTRAINT [pk_tvkl] PRIMARY KEY CLUSTERED 
(
	[MaTVKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BangChamCong] ON 

INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (1, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (2, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (3, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (4, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (5, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (6, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (7, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (8, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (9, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (10, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (11, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (12, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (13, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (14, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (15, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (16, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (17, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (18, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (19, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (20, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (21, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (22, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (23, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (24, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (25, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (26, N'NV001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (27, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (28, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (29, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (30, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (31, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (32, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (33, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (34, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (35, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (36, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (37, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (38, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (39, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (40, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (41, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (42, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (43, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (44, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (45, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (46, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (47, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (48, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (49, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (50, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (51, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (52, N'NV002', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (53, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (54, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (55, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (56, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (57, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (58, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (59, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (60, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (61, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (62, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (63, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (64, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (65, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (66, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (67, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (68, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (69, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (70, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (71, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (72, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (73, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (74, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (75, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (76, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (77, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (78, N'NV003', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (79, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (80, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (81, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (82, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (83, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (84, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (85, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (86, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (87, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (88, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (89, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (90, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (91, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (92, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (93, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (94, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (95, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (96, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (97, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (98, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (99, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
GO
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (100, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (101, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (102, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (103, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (104, N'NV004', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (105, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (106, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (107, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (108, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (109, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (110, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (111, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (112, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (113, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (114, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (115, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (116, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (117, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (118, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (119, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (120, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (121, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (122, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (123, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (124, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (125, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (126, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (127, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (128, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (129, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (130, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (131, N'NV005', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (132, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (133, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (134, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (135, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (136, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (137, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (138, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (139, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (140, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (141, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (142, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (143, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (144, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (145, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (146, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (147, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (148, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (149, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (150, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (151, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (152, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (153, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (154, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (155, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (156, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (157, N'NV006', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (158, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (159, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (160, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (161, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (162, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (163, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (164, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (165, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (166, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (167, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (168, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (169, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (170, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (171, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (172, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (173, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (174, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (175, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (176, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (177, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (178, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (179, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (180, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (181, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (182, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (183, N'NV007', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (184, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (185, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (186, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (187, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (188, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (189, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (190, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (191, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (192, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (193, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (194, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (195, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (196, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (197, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (198, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (199, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
GO
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (200, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (201, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (202, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (203, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (204, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (205, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (206, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (207, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (208, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (209, N'NV008', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (210, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (211, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (212, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (213, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (214, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (215, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (216, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (217, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (218, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (219, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (220, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (221, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (222, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (223, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (224, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (225, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (226, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (227, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (228, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (229, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (230, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (231, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (232, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (233, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (234, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (235, N'NV009', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (236, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (237, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (238, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (239, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (240, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (241, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (242, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (243, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (244, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (245, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (246, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (247, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-14' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (248, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-15' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (249, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-16' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (250, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-17' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (251, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-18' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (252, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-20' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (253, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-21' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (254, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-22' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (255, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-23' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (256, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-24' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (257, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (258, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-27' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (259, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-28' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (260, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-29' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (261, N'NV010', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (263, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (264, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (265, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (266, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (267, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (268, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (269, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (270, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (271, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (272, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (273, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (274, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (275, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (276, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (277, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (278, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (279, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (280, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (281, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (282, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (283, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (284, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (285, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (286, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (287, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (288, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-02' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (289, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (290, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (291, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (292, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (293, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (294, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (295, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (296, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (297, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (298, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (299, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (300, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
GO
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (301, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (302, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (303, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (304, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (305, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (306, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (307, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (308, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (309, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (310, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (311, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (312, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (313, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (314, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (315, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (316, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (317, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (318, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (319, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (320, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (321, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (322, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (323, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (324, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (325, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (326, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (327, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (328, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (329, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (330, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (331, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (332, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (333, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (334, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (335, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (336, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (337, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (338, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (339, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (340, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (341, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (342, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (343, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (344, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (345, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (346, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (347, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (348, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (349, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (350, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (351, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (352, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (353, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (354, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (355, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (356, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (357, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (358, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (359, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (360, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (361, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (362, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (363, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (364, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (365, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (366, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (367, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (368, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (369, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (370, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (371, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (372, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (373, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (374, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (375, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (376, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (377, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (378, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (379, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (380, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (381, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (382, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (383, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (384, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (385, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (386, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (387, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (388, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (389, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (390, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (391, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (392, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-05' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (393, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (394, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (395, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (396, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (397, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (398, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (399, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (400, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
GO
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (401, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (402, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (403, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (404, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (405, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (406, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (407, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (408, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (409, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (410, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (411, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (412, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (413, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (414, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (415, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (416, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (417, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (418, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-06' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (419, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (420, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (421, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (422, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (423, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (424, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (425, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (426, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (427, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (428, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (429, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (430, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (431, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (432, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (433, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (434, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (435, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (436, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (437, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (438, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (439, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (440, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (441, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (442, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (443, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (444, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-07' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (445, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (446, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (447, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (448, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (449, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (450, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (451, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (452, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (453, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (454, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (455, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (456, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (457, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (458, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (459, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (460, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (461, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (462, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (463, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (464, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (465, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (466, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (467, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (468, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (469, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (470, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (471, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (472, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (473, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (474, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (475, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (476, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (477, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (478, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (479, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (480, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (481, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (482, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (483, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (484, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (485, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (486, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (487, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (488, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (489, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (490, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (491, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (492, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (493, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (494, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (495, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (496, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-09' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (497, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (498, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (499, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (500, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
GO
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (501, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (502, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (503, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (504, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (505, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (506, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (507, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (508, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (509, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (510, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (511, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (512, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (513, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (514, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (515, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (516, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (517, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (518, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (519, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (520, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (521, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (522, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-10' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (523, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (524, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (525, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (526, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (527, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (528, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (529, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (530, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (531, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (532, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (533, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (534, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (535, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (536, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (537, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (538, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (539, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (540, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (541, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (542, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (543, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (544, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (545, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (546, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (547, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (548, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-11' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (549, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (550, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (551, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (552, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (553, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (554, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (555, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (556, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (557, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (558, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (559, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (560, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (561, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (562, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (563, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (564, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (565, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (566, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (567, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (568, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (569, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (570, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (571, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (572, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (573, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (574, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-12' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (575, N'NV001', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (576, N'NV002', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (577, N'NV003', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (578, N'NV004', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (579, N'NV005', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (580, N'NV006', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (581, N'NV007', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (582, N'NV008', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (583, N'NV009', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (584, N'NV010', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (585, N'NV011', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (586, N'NV012', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (587, N'NV013', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (588, N'NV014', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (589, N'NV015', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (590, N'NV016', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (591, N'NV017', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (592, N'NV018', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (593, N'NV019', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (594, N'NV020', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (595, N'NV021', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (596, N'NV022', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (597, N'NV023', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (598, N'NV024', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (599, N'NV025', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[BangChamCong] ([MaBCC], [MaNV], [Thang], [NgayLam]) VALUES (600, N'NV026', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-13' AS Date))
GO
SET IDENTITY_INSERT [dbo].[BangChamCong] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (1, N'Trưởng phòng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[Luong] ON 

INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (1, N'NV001', CAST(N'2023-11-01' AS Date), 0, 50000, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (2, N'NV002', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (3, N'NV003', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (4, N'NV004', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (5, N'NV005', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (6, N'NV006', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (7, N'NV007', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (8, N'NV008', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (9, N'NV009', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (10, N'NV010', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (11, N'NV011', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (12, N'NV012', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (13, N'NV013', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (14, N'NV014', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (15, N'NV015', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (16, N'NV016', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (17, N'NV017', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (18, N'NV018', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (19, N'NV019', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (20, N'NV020', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (21, N'NV021', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (22, N'NV022', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (23, N'NV023', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (24, N'NV024', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (25, N'NV025', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (26, N'NV026', CAST(N'2023-11-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (27, N'NV001', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (28, N'NV002', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (29, N'NV003', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (30, N'NV004', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (31, N'NV005', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (32, N'NV006', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (33, N'NV007', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (34, N'NV008', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (35, N'NV009', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (36, N'NV010', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (37, N'NV011', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (38, N'NV012', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (39, N'NV013', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (40, N'NV014', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (41, N'NV015', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (42, N'NV016', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (43, N'NV017', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (44, N'NV018', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (45, N'NV019', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (46, N'NV020', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (47, N'NV021', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (48, N'NV022', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (49, N'NV023', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (50, N'NV024', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (51, N'NV025', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (52, N'NV026', CAST(N'2024-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (53, N'NV001', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (54, N'NV002', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (55, N'NV003', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (56, N'NV004', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (57, N'NV005', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (58, N'NV006', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (59, N'NV007', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (60, N'NV008', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (61, N'NV009', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (62, N'NV010', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (63, N'NV011', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (64, N'NV012', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (65, N'NV013', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (66, N'NV014', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (67, N'NV015', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (68, N'NV016', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (69, N'NV017', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (70, N'NV018', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (71, N'NV019', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (72, N'NV020', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (73, N'NV021', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (74, N'NV022', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (75, N'NV023', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (76, N'NV024', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (77, N'NV025', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (78, N'NV026', CAST(N'2023-12-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (79, N'NV001', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (80, N'NV002', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (81, N'NV003', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (82, N'NV004', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (83, N'NV005', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (84, N'NV006', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (85, N'NV007', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (86, N'NV008', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (87, N'NV009', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (88, N'NV010', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (89, N'NV011', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (90, N'NV012', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (91, N'NV013', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (92, N'NV014', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (93, N'NV015', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (94, N'NV016', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (95, N'NV017', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (96, N'NV018', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (97, N'NV019', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (98, N'NV020', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (99, N'NV021', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (100, N'NV022', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (101, N'NV023', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (102, N'NV024', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (103, N'NV025', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
INSERT [dbo].[Luong] ([MaLuong], [MaNV], [Thang], [PCCOM], [PCXang], [PCKhac], [BHYT], [BHXH]) VALUES (104, N'NV026', CAST(N'2023-10-01' AS Date), 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Luong] OFF
GO
SET IDENTITY_INSERT [dbo].[LuongUng] ON 

INSERT [dbo].[LuongUng] ([id], [Thang], [MaNV], [SoTien]) VALUES (1, CAST(N'2023-11-01' AS Date), N'NV001', 500000)
INSERT [dbo].[LuongUng] ([id], [Thang], [MaNV], [SoTien]) VALUES (5, CAST(N'2023-12-01' AS Date), N'NV002', 2000000)
INSERT [dbo].[LuongUng] ([id], [Thang], [MaNV], [SoTien]) VALUES (6, CAST(N'2023-12-01' AS Date), N'NV001', 500000)
SET IDENTITY_INSERT [dbo].[LuongUng] OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV001', N'Nguyễn Văn An', N'123 Đường Bình Chuẩn', N'0987654321', CAST(N'1990-01-01' AS Date), 1, N'0123456789', N'Bình Dương', N'nv001.jpg', 2, 1, 15000000, N'123456', N'anhnqps33513@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV002', N'Trần Thị Bình', N'456 Đường Lái Thiêu', N'0123456789', CAST(N'1991-02-03' AS Date), 0, N'9876543210', N'Bình Dương', N'nv002.jpg', 2, 2, 8000000, N'654321', N'binh123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV003', N'Lê Văn Cường', N'789 Đường Thuận An', N'0912345678', CAST(N'1992-04-05' AS Date), 1, N'8765432109', N'Bình Dương', N'nv003.jpg', 2, 2, 8000000, N'789456', N'cuong123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV004', N'Phạm Thị Dung', N'101 Đường Di An', N'0901234567', CAST(N'1993-06-07' AS Date), 0, N'7654321098', N'Bình Dương', N'nv004.jpg', 2, 2, 8000000, N'147258', N'dung123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV005', N'Nguyễn Thị Em', N'121Đường Thủ Dầu Một', N'0890123456', CAST(N'1994-08-09' AS Date), 0, N'6543210987', N'Bình Dương', N'nv005.jpg', 2, 2, 8000000, N'369852', N'em123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV006', N'Trần Văn Giang', N'141 Đường Bến Cát', N'0889012345', CAST(N'1995-10-11' AS Date), 1, N'5432109876', N'Bình Dương', N'nv006.jpg', 2, 2, 8000000, N'258963', N'giang123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV007', N'Lê Thị Hà', N'161 Đường Tân Uyên', N'0878901234', CAST(N'1996-12-13' AS Date), 0, N'4321098765', N'Bình Dương', N'nv007.jpg', 2, 2, 8000000, N'741852', N'ha123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV008', N'Phạm Văn Hùng', N'181 Đường Bàu Bàng', N'0867890123', CAST(N'1997-02-15' AS Date), 1, N'3210987654', N'Bình Dương', N'nv008.jpg', 2, 2, 8000000, N'963741', N'hung123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV009', N'Nguyễn Thị Lan', N'201 Đường Phú Giáo', N'0856789012', CAST(N'1998-04-17' AS Date), 0, N'2109876543', N'Bình Dương', N'nv009.jpg', 2, 2, 8000000, N'852741', N'lan123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV010', N'Trần Thị Mai', N'221 Đường Dầu Tiếng', N'0845678901', CAST(N'1999-06-19' AS Date), 0, N'1098765432', N'Bình Dương', N'nv010.jpg', 1, 1, 20000000, N'123456', N'mai123@fpt.edu.vn')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV011', N'Nguyễn Văn Lâm', N'241 Ðường Bình Chuẩn', N'0834567890', CAST(N'2000-08-21' AS Date), 1, N'1234567890', N'Bình Dương', N'nv011.jpg', 1, 2, 9000000, N'159753', N'lam123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV012', N'Trần Thị Nga', N'262 Ðường Cách Mạng Tháng Tám', N'0823456789', CAST(N'2001-09-22' AS Date), 0, N'2345678901', N'Bình Dương', N'nv012.jpg', 2, 2, 8000000, N'357951', N'nga123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV013', N'Lê Văn Phúc', N'283 Đường Lê Hồng Phong', N'0812345678', CAST(N'2002-10-23' AS Date), 1, N'3456789012', N'Bình Dương', N'nv013.jpg', 2, 2, 8000000, N'951357', N'phuc123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV014', N'Phạm Thị Quỳnh', N'304  Đường Lê Văn', N'0801234567', CAST(N'2003-11-24' AS Date), 0, N'4567890123', N'Bình Dương', N'nv014.jpg', 2, 2, 8000000, N'753159', N'quynh123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV015', N'Nguyễn Thị Thanh', N'325  Đường Lê Văn Cừ', N'0790123456', CAST(N'2004-12-25' AS Date), 0, N'5678901234', N'Bình Dương', N'nv015.jpg', 2, 2, 8000000, N'159357', N'thanh123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV016', N'Trần Văn Hải', N'346  Đường Lê Văn', N'0789012345', CAST(N'2005-01-26' AS Date), 1, N'6789012345', N'Bình Dương', N'nv016.jpg', 2, 2, 8000000, N'357159', N'hai123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV017', N'Lê Thị Hồng', N'367  Đường Lê Văn Tri Phương', N'0778901234', CAST(N'2006-02-27' AS Date), 0, N'7890123456', N'Bình Dương', N'nv017.jpg', 2, 2, 8000000, N'951753', N'hong123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV018', N'Phạm Văn Khánh', N'388  Đường Lê Văn Lý ', N'0767890123', CAST(N'2007-03-28' AS Date), 1, N'8901234567', N'Bình Dương', N'nv018.jpg', 2, 2, 8000000, N'753951', N'khanh123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV019', N'Nguyễn Thị Minh', N'409  Đường Lê Văn Linh', N',0756789012', CAST(N'2008-04-29' AS Date), 0, N'9012345678', N'Bình Dương', N'nv019.jpg', 2, 2, 8000000, N'357753', N'minh123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV020', N'Trần Thị Ngọc', N'430  Đường Lê Văn Quá', N'0745678901', CAST(N'2009-05-30' AS Date), 0, N'0123456789', N'Bình Dương', N'nv020.jpg', 2, 2, 8000000, N'753357', N'ngoc123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV021', N'Nguyễn Văn Quang', N'451 Đường Lê Văn Việt', N'0734567890', CAST(N'2010-06-01' AS Date), 1, N'1234567890', N'Bình Dương', N'nv021.jpg', 1, 2, 9000000, N'159753', N'quang123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV022', N'Trần Thị Thúy', N'472 Đường Lê Văn Lương', N'0723456789', CAST(N'2011-07-02' AS Date), 0, N'2345678901', N'Bình Dương', N'nv022.jpg', 2, 2, 8000000, N'357951', N'thuy123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV023', N'Lê Văn Thành', N'493 Đường Thích Quảng Đức', N'0712345678', CAST(N'2012-08-03' AS Date), 1, N'3456789012', N'Bình Dương', N'nv023.jpg', 2, 2, 8000000, N'951357', N'thanh123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV024', N'Phạm Thị Hương', N'514 Ðường Nguyễn Van Cừ', N'0701234567', CAST(N'2013-09-04' AS Date), 0, N'4567890123', N'Bình Dương', N'nv024.jpg', 2, 2, 8000000, N'753159', N'huong123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV025', N'Nguyễn Thị Nhung', N'535 Đường Nguyễn Tất Thành', N'0690123456', CAST(N'2014-10-05' AS Date), 0, N'5678901234', N'Bình Dương', N'nv025.jpg', 2, 2, 8000000, N'159357', N'nhung123@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [CCCD], [QueQuan], [Hinh], [MaPB], [MaCV], [Luong], [MatKhau], [Email]) VALUES (N'NV026', N'Trần Văn Huy', N'556 Đường Nguyễn Văn Tự', N'0689012345', CAST(N'2015-11-06' AS Date), 1, N'5678901234', N'Bình Dương', N'nv026.jpg', 2, 2, 8000000, N'159357', N'huy123@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[PhongBan] ON 

INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (1, N'Phòng kế toán')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (2, N'Phòng bán hàng')
SET IDENTITY_INSERT [dbo].[PhongBan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongKe] ON 

INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (51, CAST(N'2024-12-01' AS Date), N'Phòng kế toán', 0)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (52, CAST(N'2024-12-01' AS Date), N'Phòng bán hàng', 0)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (141, CAST(N'2023-10-01' AS Date), N'Phòng kế toán', 0)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (142, CAST(N'2023-10-01' AS Date), N'Phòng bán hàng', 250000)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (159, CAST(N'2023-11-01' AS Date), N'Phòng kế toán', 20200000)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (160, CAST(N'2023-11-01' AS Date), N'Phòng bán hàng', 79607692)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (197, CAST(N'2023-12-01' AS Date), N'Phòng kế toán', 19000000)
INSERT [dbo].[ThongKe] ([id], [Thang], [TenPB], [TongChi]) VALUES (198, CAST(N'2023-12-01' AS Date), N'Phòng bán hàng', 93000000)
SET IDENTITY_INSERT [dbo].[ThongKe] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongVaKyLuat] ON 

INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (1, N'NV001', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (2, N'NV002', 0, 50000, CAST(N'2023-11-01' AS Date), N'Vi phạm quy định')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (3, N'NV003', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (4, N'NV004', 0, 100000, CAST(N'2023-11-01' AS Date), N'Nghỉ làm vượt số ngày qui định')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (5, N'NV005', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (6, N'NV006', 0, 50000, CAST(N'2023-11-01' AS Date), N'Vi phạm quy định')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (7, N'NV007', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (8, N'NV008', 0, 50000, CAST(N'2023-11-01' AS Date), N'Vi phạm quy định')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (9, N'NV009', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (10, N'NV010', 1, 200000, CAST(N'2023-11-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (11, N'NV001', 1, 200000, CAST(N'2023-10-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (12, N'NV002', 0, 50000, CAST(N'2023-10-01' AS Date), N'Vi phạm quy định')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (13, N'NV003', 1, 200000, CAST(N'2023-10-01' AS Date), N'Hoàn thành tốt công việc')
INSERT [dbo].[ThuongVaKyLuat] ([MaTVKL], [MaNV], [Loai], [SoTien], [Thang], [LyDo]) VALUES (14, N'NV004', 0, 100000, CAST(N'2023-10-01' AS Date), N'Nghỉ làm vượt số ngày qui định')
SET IDENTITY_INSERT [dbo].[ThuongVaKyLuat] OFF
GO
ALTER TABLE [dbo].[BangChamCong]  WITH NOCHECK ADD  CONSTRAINT [fk_bcc] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BangChamCong] NOCHECK CONSTRAINT [fk_bcc]
GO
ALTER TABLE [dbo].[Luong]  WITH NOCHECK ADD  CONSTRAINT [fk_luong_nv] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Luong] NOCHECK CONSTRAINT [fk_luong_nv]
GO
ALTER TABLE [dbo].[LuongUng]  WITH NOCHECK ADD  CONSTRAINT [fk_luongUng_nv] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[LuongUng] NOCHECK CONSTRAINT [fk_luongUng_nv]
GO
ALTER TABLE [dbo].[NhanVien]  WITH NOCHECK ADD  CONSTRAINT [fk_nv_cv] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] NOCHECK CONSTRAINT [fk_nv_cv]
GO
ALTER TABLE [dbo].[NhanVien]  WITH NOCHECK ADD  CONSTRAINT [fk_nv_pb] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[NhanVien] NOCHECK CONSTRAINT [fk_nv_pb]
GO
ALTER TABLE [dbo].[ThuongVaKyLuat]  WITH NOCHECK ADD  CONSTRAINT [fk_tvkl] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThuongVaKyLuat] NOCHECK CONSTRAINT [fk_tvkl]
GO
/****** Object:  StoredProcedure [dbo].[thongKeLuongThang]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Thống kê tổng lương chi theo tháng
CREATE   PROC [dbo].[thongKeLuongThang] (@date int)
AS 
BEGIN
	set nocount on
	 if(@date = 0)
		select TenPB,sum(TongChi) as TongChi from ThongKe
		group by TenPB
	else
		select * from ThongKe
		where YEAR(Thang) = @date
END
GO
/****** Object:  StoredProcedure [dbo].[thongkeNV]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Thống kê tổng nhân viên theo phòng ban
	create   proc [dbo].[thongkeNV] 
as
	begin
	set nocount on
					SELECT MaPB, 
					   COUNT(*) AS Tong, 
					   COUNT(CASE WHEN GioiTinh = 0 THEN 1 END) AS Nu, 
					   COUNT(CASE WHEN GioiTinh = 1 THEN 1 END) AS Nam
					FROM NhanVien
					GROUP BY MaPB
	end
GO
/****** Object:  StoredProcedure [dbo].[xoaNV]    Script Date: 12/2/2023 10:29:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xóa nhân viên đa bảng
create   proc [dbo].[xoaNV] @manv nvarchar(255)
as
	begin
	set nocount on
		begin try
			begin tran
				delete from BangChamCong where MaNV = @manv
				delete from luong where MaNV = @manv
				delete from ThuongVaKyLuat where MaNV = @manv
				delete from LuongUng where MaNV = @manv
				delete from NhanVien where MaNV = @manv
			commit tran
		end try
			begin catch
				print N'Xóa không thành công';
				rollback tran;
			end catch
	end
GO
