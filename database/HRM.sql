﻿create database HRM;
go
use HRM;
go

create table PhongBan(
	MaPB int identity(1,1) not null,
	TenPB nvarchar(255) not null,
	Constraint pk_pb primary key(MaPB),
)
create table ChucVu(
	MaCV int identity(1,1) not null,
	TenCV nvarchar(255) not null,
	Constraint pk_cv primary key(MaCV),

)
create table NhanVien(
	MaNV nvarchar(255) not null,
	HoTen nvarchar(255) not null,
	DiaChi nvarchar(255) not null,
	SDT nvarchar(15) not null,
	NgaySinh date not null,
	GioiTinh bit not null,
	CCCD nvarchar(255) not null,
	QueQuan nvarchar(255) not null,
	Hinh nvarchar(255) not null,
	MaPB int not null,
	MaCV int not null,
	Luong float not null,
	MatKhau nvarchar(255) not null,
	Email nvarchar(255) ,
	Constraint pk_nv primary key(MaNV),
	Constraint fk_nv_pb FOREIGN KEY (MaPB) REFERENCES phongban(MaPB),
	Constraint fk_nv_cv FOREIGN KEY (MaCV) REFERENCES chucvu(MaCV),

)
create table BangChamCong(
	MaBCC int identity(1,1) not null,
	MaNV nvarchar(255) not null,
	Thang date not null,
	NgayLam date not null,
	Constraint pk_bcc primary key(MaBCC),
	Constraint fk_bcc FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV)

)
create table ThuongVaKyLuat(
	MaTVKL int identity(1,1) not null,
	MaNV nvarchar(255) not null,
	Loai bit not null,
	SoTien float not null,
	Thang date not null,
	LyDo nvarchar(255) null,
	Constraint pk_tvkl primary key(MaTVKL),
	Constraint fk_tvkl FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV)
)
create table Luong(
	MaLuong int identity(1,1) not null,
	MaNV nvarchar(255) not null,
	Thang date not null,
	PCCOM int not null,
	PCXang int not null,
	PCKhac int not null,
	BHYT int not null,
	BHXH int not null,
	Constraint pk_luong primary key(MaLuong),
	Constraint fk_luong_nv FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV),

)
create table ThongKe(
	id int identity(1,1) not null,
	Thang date not null,
	TenPB nvarchar(255),
	TongChi float
	Constraint pk_thongke primary key(id),

)
create table LuongUng(
	id int identity(1,1) not null,
	Thang date not null,
	MaNV nvarchar(255) not null,
	SoTien float
	Constraint pk_luongUng primary key(id),
	Constraint fk_luongUng_nv FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV),

)

		
INSERT INTO PhongBan(TenPB)
VALUES(N'Phòng kế toán'),
		(N'Phòng bán hàng');

INSERT INTO ChucVu(TenCV)
VALUES(N'Trưởng phòng'),
		(N'Nhân viên');

INSERT INTO nhanvien (MaNV, HoTen, DiaChi, SDT, NgaySinh, GioiTinh, CCCD, QueQuan, Hinh, MaPB, MaCV, Luong, MatKhau, Email) VALUES
('NV001', N'Nguyễn Văn An', '123 Đường Bình Chuẩn', '0987654321', '1990-01-01', 1, '0123456789', 'Bình Dương', 'hinh1.jpg', 2, 1, 15000000.0, '123456','anhnqps33513@fpt.edu.vn'),
('NV002', N'Trần Thị Bình', '456 Đường Lái Thiêu', '0123456789', '1991-02-03',0, '9876543210', 'Bình Dương', 'hinh2.jpg', 2, 2, 8000000.0, '654321','binh123@fpt.edu.vn'),
('NV003', N'Lê Văn Cường', '789 Đường Thuận An', '0912345678', '1992-04-05',1, '8765432109', 'Bình Dương', 'hinh3.jpg', 2, 2, 8000000.0, '789456','cuong123@fpt.edu.vn'),
('NV004', N'Phạm Thị Dung', '101 Đường Dĩ An', '0901234567', '1993-06-07',0, '7654321098', 'Bình Dương', 'hinh4.jpg', 2, 2, 8000000.0, '147258','dung123@fpt.edu.vn'),
('NV005', N'Nguyễn Thị Em', '121 Đường Thủ Dầu Một', '0890123456', '1994-08-09',0, '6543210987', 'Bình Dương', 'hinh5.jpg', 2, 2, 8000000.0, '369852','em123@fpt.edu.vn'),
('NV006', N'Trần Văn Giang', '141 Đường Bến Cát', '0889012345', '1995-10-11',1, '5432109876', 'Bình Dương', 'hinh6.jpg', 2, 2, 8000000.0, '258963','giang123@fpt.edu.vn'),
('NV007', N'Lê Thị Hà', '161 Đường Tân Uyên', '0878901234', '1996-12-13',0, '4321098765', 'Bình Dương', 'hinh7.jpg', 2 , 2 , 8000000.0 , '741852','ha123@fpt.edu.vn'),
('NV008', N'Phạm Văn Hùng', '181 Đường Bàu Bàng', '0867890123', '1997-02-15',1, '3210987654', 'Bình Dương', 'hinh8.jpg',2,2, 8000000.0,'963741','hung123@fpt.edu.vn'),
('NV009', N'Nguyễn Thị Lan', '201 Đường Phú Giáo', '0856789012', '1998-04-17',0, '2109876543', 'Bình Dương', 'hinh9.jpg', 2 , 2 ,8000000.0 , '852741','lan123@fpt.edu.vn'),
('NV010', N'Trần Thị Mai','221 Đường Dầu Tiếng','0845678901','1999-06-19',0 ,'1098765432','Bình Dương','hinh10.jpg',1 ,1,20000000.0,'123456','mai123@fpt.edu.vn'),
('NV011', N'Nguyễn Văn Lâm', '241 Đường Bạch Đằng', '0834567890', '2000-08-21', 1, '1234567890', 'Bình Dương', 'hinh11.jpg', 1, 2, 9000000.0, '159753','lam123@gmail.com'),
('NV012', N'Trần Thị Nga', '262 Đường Cách Mạng Tháng Tám', '0823456789', '2001-09-22', 0, '2345678901', 'Bình Dương', 'hinh12.jpg', 2, 2, 8000000.0, '357951','nga123@gmail.com'),
('NV013', N'Lê Văn Phúc', '283 Đường Lê Hồng Phong', '0812345678', '2002-10-23', 1, '3456789012', 'Bình Dương', 'hinh13.jpg', 2, 2, 8000000.0, '951357','phuc123@gmail.com'),
('NV014', N'Phạm Thị Quỳnh', '304 Đường Nguyễn Thị Minh Khai', '0801234567', '2003-11-24', 0, '4567890123', 'Bình Dương', 'hinh14.jpg', 2, 2, 8000000.0, '753159','quynh123@gmail.com'),
('NV015', N'Nguyễn Thị Thanh', '325 Đường Nguyễn Văn Cừ', '0790123456', '2004-12-25', 0, '5678901234', 'Bình Dương', 'hinh15.jpg', 2, 2, 8000000.0, '159357','thanh123@gmail.com'),
('NV016', N'Trần Văn Hải', '346 Đường Trần Hưng Đạo', '0789012345', '2005-01-26', 1, '6789012345', 'Bình Dương', 'hinh16.jpg', 2, 2, 8000000.0, '357159','hai123@gmail.com'),
('NV017', N'Lê Thị Hồng', '367 Đường Nguyễn Tri Phương', '0778901234', '2006-02-27', 0, '7890123456', 'Bình Dương', 'hinh17.jpg', 2 , 2 , 8000000.0 , '951753','hong123@gmail.com'),
('NV018', N'Phạm Văn Khánh', '388 Đường Lý Thường Kiệt', '0767890123', '2007-03-28', 1, '8901234567', 'Bình Dương', 'hinh18.jpg',2,2, 8000000.0,'753951','khanh123@gmail.com'),
('NV019', N'Nguyễn Thị Minh', '409 Đường Nguyễn Văn Linh', ',0756789012', '2008-04-29', 0, '9012345678', 'Bình Dương', 'hinh19.jpg', 2 , 2 ,8000000.0 , '357753','minh123@gmail.com'),
('NV020', N'Trần Thị Ngọc', '430 Đường Nguyễn Văn Quá','0745678901','2009-05-30',0 ,'0123456789','Bình Dương','hinh20.jpg',2 ,2,8000000.0,'753357','ngoc123@gmail.com'),
('NV021', N'Nguyễn Văn Quang', '451 Đường Lê Văn Việt', '0734567890', '2010-06-01', 1, '1234567890', 'Bình Dương', 'hinh21.jpg', 1, 2, 9000000.0, '159753','quang123@gmail.com'),
('NV022', N'Trần Thị Thúy', '472 Đường Lê Văn Lương', '0723456789', '2011-07-02', 0, '2345678901', 'Bình Dương', 'hinh22.jpg', 2, 2, 8000000.0, '357951','thuy123@gmail.com'),
('NV023', N'Lê Văn Thành', '493 Đường Nguyễn Hữu Thọ', '0712345678', '2012-08-03', 1, '3456789012', 'Bình Dương', 'hinh23.jpg', 2, 2, 8000000.0, '951357','thanh123@gmail.com'),
('NV024', N'Phạm Thị Hương', '514 Đường Nguyễn Văn Cừ', '0701234567', '2013-09-04', 0, '4567890123', 'Bình Dương', 'hinh24.jpg', 2, 2, 8000000.0, '753159','huong123@gmail.com'),
('NV025', N'Nguyễn Thị Nhung', '535 Đường Nguyễn Tất Thành', '0690123456', '2014-10-05', 0, '5678901234', 'Bình Dương', 'hinh25.jpg', 2, 2, 8000000.0, '159357','nhung123@gmail.com'),
('NV026', N'Trần Văn Huy', '556 Đường Nguyễn Văn Linh', '0689012345', '2015-11-06',1,'5678901234', 'Bình Dương', 'hinh25.jpg', 2, 2, 8000000.0, '159357','huy123@gmail.com');

INSERT INTO bangchamcong (MaNV, Thang, NgayLam) 
VALUES
('NV001', '2023-11-01', '2023-11-01'),
('NV001', '2023-11-01', '2023-11-02'),
('NV001', '2023-11-01', '2023-11-03'),
('NV001', '2023-11-01', '2023-11-04'),
('NV001', '2023-11-01', '2023-11-06'),
('NV001', '2023-11-01', '2023-11-07'),
('NV001', '2023-11-01', '2023-11-08'),
('NV001', '2023-11-01', '2023-11-09'),
('NV001', '2023-11-01', '2023-11-10'),
('NV001', '2023-11-01', '2023-11-11'),
('NV001', '2023-11-01', '2023-11-13'),
('NV001', '2023-11-01', '2023-11-14'),
('NV001', '2023-11-01', '2023-11-15'),
('NV001', '2023-11-01', '2023-11-16'),
('NV001', '2023-11-01', '2023-11-17'),
('NV001', '2023-11-01', '2023-11-18'),
('NV001', '2023-11-01', '2023-11-20'),
('NV001', '2023-11-01', '2023-11-21'),
('NV001', '2023-11-01', '2023-11-22'),
('NV001', '2023-11-01', '2023-11-23'),
('NV001', '2023-11-01', '2023-11-24'),
('NV001', '2023-11-01', '2023-11-25'),
('NV001', '2023-11-01', '2023-11-27'),
('NV001', '2023-11-01', '2023-11-28'),
('NV001', '2023-11-01', '2023-11-29'),
('NV001', '2023-11-01', '2023-11-30'),

('NV002', '2023-11-01', '2023-11-01'),
('NV002', '2023-11-01', '2023-11-02'),
('NV002', '2023-11-01', '2023-11-03'),
('NV002', '2023-11-01', '2023-11-04'),
('NV002', '2023-11-01', '2023-11-06'),
('NV002', '2023-11-01', '2023-11-07'),
('NV002', '2023-11-01', '2023-11-08'),
('NV002', '2023-11-01', '2023-11-09'),
('NV002', '2023-11-01', '2023-11-10'),
('NV002', '2023-11-01', '2023-11-11'),
('NV002', '2023-11-01', '2023-11-13'),
('NV002', '2023-11-01', '2023-11-14'),
('NV002', '2023-11-01', '2023-11-15'),
('NV002', '2023-11-01', '2023-11-16'),
('NV002', '2023-11-01', '2023-11-17'),
('NV002', '2023-11-01', '2023-11-18'),
('NV002', '2023-11-01', '2023-11-20'),
('NV002', '2023-11-01', '2023-11-21'),
('NV002', '2023-11-01', '2023-11-22'),
('NV002', '2023-11-01', '2023-11-23'),
('NV002', '2023-11-01', '2023-11-24'),
('NV002', '2023-11-01', '2023-11-25'),
('NV002', '2023-11-01', '2023-11-27'),
('NV002', '2023-11-01', '2023-11-28'),
('NV002', '2023-11-01', '2023-11-29'),
('NV002', '2023-11-01', '2023-11-30'),

('NV003', '2023-11-01', '2023-11-01'),
('NV003', '2023-11-01', '2023-11-02'),
('NV003', '2023-11-01', '2023-11-03'),
('NV003', '2023-11-01', '2023-11-04'),
('NV003', '2023-11-01', '2023-11-06'),
('NV003', '2023-11-01', '2023-11-07'),
('NV003', '2023-11-01', '2023-11-08'),
('NV003', '2023-11-01', '2023-11-09'),
('NV003', '2023-11-01', '2023-11-10'),
('NV003', '2023-11-01', '2023-11-11'),
('NV003', '2023-11-01', '2023-11-13'),
('NV003', '2023-11-01', '2023-11-14'),
('NV003', '2023-11-01', '2023-11-15'),
('NV003', '2023-11-01', '2023-11-16'),
('NV003', '2023-11-01', '2023-11-17'),
('NV003', '2023-11-01', '2023-11-18'),
('NV003', '2023-11-01', '2023-11-20'),
('NV003', '2023-11-01', '2023-11-21'),
('NV003', '2023-11-01', '2023-11-22'),
('NV003', '2023-11-01', '2023-11-23'),
('NV003', '2023-11-01', '2023-11-24'),
('NV003', '2023-11-01', '2023-11-25'),
('NV003', '2023-11-01', '2023-11-27'),
('NV003', '2023-11-01', '2023-11-28'),
('NV003', '2023-11-01', '2023-11-29'),
('NV003', '2023-11-01', '2023-11-30'),

('NV004', '2023-11-01', '2023-11-01'),
('NV004', '2023-11-01', '2023-11-02'),
('NV004', '2023-11-01', '2023-11-03'),
('NV004', '2023-11-01', '2023-11-04'),
('NV004', '2023-11-01', '2023-11-06'),
('NV004', '2023-11-01', '2023-11-07'),
('NV004', '2023-11-01', '2023-11-08'),
('NV004', '2023-11-01', '2023-11-09'),
('NV004', '2023-11-01', '2023-11-10'),
('NV004', '2023-11-01', '2023-11-11'),
('NV004', '2023-11-01', '2023-11-13'),
('NV004', '2023-11-01', '2023-11-14'),
('NV004', '2023-11-01', '2023-11-15'),
('NV004', '2023-11-01', '2023-11-16'),
('NV004', '2023-11-01', '2023-11-17'),
('NV004', '2023-11-01', '2023-11-18'),
('NV004', '2023-11-01', '2023-11-20'),
('NV004', '2023-11-01', '2023-11-21'),
('NV004', '2023-11-01', '2023-11-22'),
('NV004', '2023-11-01', '2023-11-23'),
('NV004', '2023-11-01', '2023-11-24'),
('NV004', '2023-11-01', '2023-11-25'),
('NV004', '2023-11-01', '2023-11-27'),
('NV004', '2023-11-01', '2023-11-28'),
('NV004', '2023-11-01', '2023-11-29'),
('NV004', '2023-11-01', '2023-11-30'),
('NV005', '2023-11-01', '2023-11-30'),
('NV005', '2023-11-01', '2023-11-01'),
('NV005', '2023-11-01', '2023-11-02'),
('NV005', '2023-11-01', '2023-11-03'),
('NV005', '2023-11-01', '2023-11-04'),
('NV005', '2023-11-01', '2023-11-06'),
('NV005', '2023-11-01', '2023-11-07'),
('NV005', '2023-11-01', '2023-11-08'),
('NV005', '2023-11-01', '2023-11-09'),
('NV005', '2023-11-01', '2023-11-10'),
('NV005', '2023-11-01', '2023-11-11'),
('NV005', '2023-11-01', '2023-11-13'),
('NV005', '2023-11-01', '2023-11-14'),
('NV005', '2023-11-01', '2023-11-15'),
('NV005', '2023-11-01', '2023-11-16'),
('NV005', '2023-11-01', '2023-11-17'),
('NV005', '2023-11-01', '2023-11-18'),
('NV005', '2023-11-01', '2023-11-20'),
('NV005', '2023-11-01', '2023-11-21'),
('NV005', '2023-11-01', '2023-11-22'),
('NV005', '2023-11-01', '2023-11-23'),
('NV005', '2023-11-01', '2023-11-24'),
('NV005', '2023-11-01', '2023-11-25'),
('NV005', '2023-11-01', '2023-11-27'),
('NV005', '2023-11-01', '2023-11-28'),
('NV005', '2023-11-01', '2023-11-29'),
('NV005', '2023-11-01', '2023-11-30'),

('NV006', '2023-11-01', '2023-11-01'),
('NV006', '2023-11-01', '2023-11-02'),
('NV006', '2023-11-01', '2023-11-03'),
('NV006', '2023-11-01', '2023-11-04'),
('NV006', '2023-11-01', '2023-11-06'),
('NV006', '2023-11-01', '2023-11-07'),
('NV006', '2023-11-01', '2023-11-08'),
('NV006', '2023-11-01', '2023-11-09'),
('NV006', '2023-11-01', '2023-11-10'),
('NV006', '2023-11-01', '2023-11-11'),
('NV006', '2023-11-01', '2023-11-13'),
('NV006', '2023-11-01', '2023-11-14'),
('NV006', '2023-11-01', '2023-11-15'),
('NV006', '2023-11-01', '2023-11-16'),
('NV006', '2023-11-01', '2023-11-17'),
('NV006', '2023-11-01', '2023-11-18'),
('NV006', '2023-11-01', '2023-11-20'),
('NV006', '2023-11-01', '2023-11-21'),
('NV006', '2023-11-01', '2023-11-22'),
('NV006', '2023-11-01', '2023-11-23'),
('NV006', '2023-11-01', '2023-11-24'),
('NV006', '2023-11-01', '2023-11-25'),
('NV006', '2023-11-01', '2023-11-27'),
('NV006', '2023-11-01', '2023-11-28'),
('NV006', '2023-11-01', '2023-11-29'),
('NV006', '2023-11-01', '2023-11-30'),

('NV007', '2023-11-01', '2023-11-01'),
('NV007', '2023-11-01', '2023-11-02'),
('NV007', '2023-11-01', '2023-11-03'),
('NV007', '2023-11-01', '2023-11-04'),
('NV007', '2023-11-01', '2023-11-06'),
('NV007', '2023-11-01', '2023-11-07'),
('NV007', '2023-11-01', '2023-11-08'),
('NV007', '2023-11-01', '2023-11-09'),
('NV007', '2023-11-01', '2023-11-10'),
('NV007', '2023-11-01', '2023-11-11'),
('NV007', '2023-11-01', '2023-11-13'),
('NV007', '2023-11-01', '2023-11-14'),
('NV007', '2023-11-01', '2023-11-15'),
('NV007', '2023-11-01', '2023-11-16'),
('NV007', '2023-11-01', '2023-11-17'),
('NV007', '2023-11-01', '2023-11-18'),
('NV007', '2023-11-01', '2023-11-20'),
('NV007', '2023-11-01', '2023-11-21'),
('NV007', '2023-11-01', '2023-11-22'),
('NV007', '2023-11-01', '2023-11-23'),
('NV007', '2023-11-01', '2023-11-24'),
('NV007', '2023-11-01', '2023-11-25'),
('NV007', '2023-11-01', '2023-11-27'),
('NV007', '2023-11-01', '2023-11-28'),
('NV007', '2023-11-01', '2023-11-29'),
('NV007', '2023-11-01', '2023-11-30'),

('NV008', '2023-11-01', '2023-11-01'),
('NV008', '2023-11-01', '2023-11-02'),
('NV008', '2023-11-01', '2023-11-03'),
('NV008', '2023-11-01', '2023-11-04'),
('NV008', '2023-11-01', '2023-11-06'),
('NV008', '2023-11-01', '2023-11-07'),
('NV008', '2023-11-01', '2023-11-08'),
('NV008', '2023-11-01', '2023-11-09'),
('NV008', '2023-11-01', '2023-11-10'),
('NV008', '2023-11-01', '2023-11-11'),
('NV008', '2023-11-01', '2023-11-13'),
('NV008', '2023-11-01', '2023-11-14'),
('NV008', '2023-11-01', '2023-11-15'),
('NV008', '2023-11-01', '2023-11-16'),
('NV008', '2023-11-01', '2023-11-17'),
('NV008', '2023-11-01', '2023-11-18'),
('NV008', '2023-11-01', '2023-11-20'),
('NV008', '2023-11-01', '2023-11-21'),
('NV008', '2023-11-01', '2023-11-22'),
('NV008', '2023-11-01', '2023-11-23'),
('NV008', '2023-11-01', '2023-11-24'),
('NV008', '2023-11-01', '2023-11-25'),
('NV008', '2023-11-01', '2023-11-27'),
('NV008', '2023-11-01', '2023-11-28'),
('NV008', '2023-11-01', '2023-11-29'),
('NV008', '2023-11-01', '2023-11-30'),

('NV009', '2023-11-01', '2023-11-01'),
('NV009', '2023-11-01', '2023-11-02'),
('NV009', '2023-11-01', '2023-11-03'),
('NV009', '2023-11-01', '2023-11-04'),
('NV009', '2023-11-01', '2023-11-06'),
('NV009', '2023-11-01', '2023-11-07'),
('NV009', '2023-11-01', '2023-11-08'),
('NV009', '2023-11-01', '2023-11-09'),
('NV009', '2023-11-01', '2023-11-10'),
('NV009', '2023-11-01', '2023-11-11'),
('NV009', '2023-11-01', '2023-11-13'),
('NV009', '2023-11-01', '2023-11-14'),
('NV009', '2023-11-01', '2023-11-15'),
('NV009', '2023-11-01', '2023-11-16'),
('NV009', '2023-11-01', '2023-11-17'),
('NV009', '2023-11-01', '2023-11-18'),
('NV009', '2023-11-01', '2023-11-20'),
('NV009', '2023-11-01', '2023-11-21'),
('NV009', '2023-11-01', '2023-11-22'),
('NV009', '2023-11-01', '2023-11-23'),
('NV009', '2023-11-01', '2023-11-24'),
('NV009', '2023-11-01', '2023-11-25'),
('NV009', '2023-11-01', '2023-11-27'),
('NV009', '2023-11-01', '2023-11-28'),
('NV009', '2023-11-01', '2023-11-29'),
('NV009', '2023-11-01', '2023-11-30'),

('NV010', '2023-11-01', '2023-11-01'),
('NV010', '2023-11-01', '2023-11-02'),
('NV010', '2023-11-01', '2023-11-03'),
('NV010', '2023-11-01', '2023-11-04'),
('NV010', '2023-11-01', '2023-11-06'),
('NV010', '2023-11-01', '2023-11-07'),
('NV010', '2023-11-01', '2023-11-08'),
('NV010', '2023-11-01', '2023-11-09'),
('NV010', '2023-11-01', '2023-11-10'),
('NV010', '2023-11-01', '2023-11-11'),
('NV010', '2023-11-01', '2023-11-13'),
('NV010', '2023-11-01', '2023-11-14'),
('NV010', '2023-11-01', '2023-11-15'),
('NV010', '2023-11-01', '2023-11-16'),
('NV010', '2023-11-01', '2023-11-17'),
('NV010', '2023-11-01', '2023-11-18'),
('NV010', '2023-11-01', '2023-11-20'),
('NV010', '2023-11-01', '2023-11-21'),
('NV010', '2023-11-01', '2023-11-22'),
('NV010', '2023-11-01', '2023-11-23'),
('NV010', '2023-11-01', '2023-11-24'),
('NV010', '2023-11-01', '2023-11-25'),
('NV010', '2023-11-01', '2023-11-27'),
('NV010', '2023-11-01', '2023-11-28'),
('NV010', '2023-11-01', '2023-11-29'),
('NV010', '2023-11-01', '2023-11-30')

INSERT INTO thuongvakyluat (MaNV, Loai, SoTien, Thang, LyDo) VALUES
('NV001', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV002', 0, 50000,'2023-11-01', N'Vi phạm quy định'),
('NV003', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV004', 0, 100000,'2023-11-01', N'Nghỉ làm vượt số ngày qui định'),
('NV005', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV006', 0, 50000,'2023-11-01', N'Vi phạm quy định'),
('NV007', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV008', 0, 50000,'2023-11-01', N'Vi phạm quy định'),
('NV009', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV010', 1, 200000,'2023-11-01', N'Hoàn thành tốt công việc'),
('NV001', 1, 200000,'2023-10-01', N'Hoàn thành tốt công việc'),
('NV002', 0, 50000,'2023-10-01', N'Vi phạm quy định'),
('NV003', 1, 200000,'2023-10-01', N'Hoàn thành tốt công việc'),
('NV004', 0, 100000,'2023-10-01', N'Nghỉ làm vượt số ngày qui định')

INSERT INTO luong (MaNV, Thang, PCCOM, PCXang, PCKhac, BHYT, BHXH) VALUES
('NV001', '2023-11-01', 0, 0, 0, 0, 0),
('NV002', '2023-11-01', 0, 0, 0, 0, 0),
('NV003', '2023-11-01', 0, 0, 0, 0, 0),
('NV004', '2023-11-01', 0, 0, 0, 0, 0),
('NV005', '2023-11-01', 0, 0, 0, 0, 0),
('NV006', '2023-11-01', 0, 0, 0, 0, 0),
('NV007', '2023-11-01', 0, 0, 0, 0, 0),
('NV008', '2023-11-01',0, 0, 0, 0, 0),
('NV009', '2023-11-01',0, 0, 0, 0, 0),
('NV010', '2023-11-01',0, 0, 0, 0, 0),
('NV011', '2023-11-01', 0, 0, 0, 0, 0),
('NV012', '2023-11-01', 0, 0, 0, 0, 0),
('NV013', '2023-11-01', 0, 0, 0, 0, 0),
('NV014', '2023-11-01', 0, 0, 0, 0, 0),
('NV015', '2023-11-01', 0, 0, 0, 0, 0),
('NV016', '2023-11-01', 0, 0, 0, 0, 0),
('NV017', '2023-11-01', 0, 0, 0, 0, 0),
('NV018', '2023-11-01',0, 0, 0, 0, 0),
('NV019', '2023-11-01',0, 0, 0, 0, 0),
('NV020', '2023-11-01',0, 0, 0, 0, 0),
('NV021', '2023-11-01', 0, 0, 0, 0, 0),
('NV022', '2023-11-01', 0, 0, 0, 0, 0),
('NV023', '2023-11-01', 0, 0, 0, 0, 0),
('NV024', '2023-11-01', 0, 0, 0, 0, 0),
('NV025', '2023-11-01', 0, 0, 0, 0, 0),
('NV026', '2023-11-01', 0, 0, 0, 0, 0)

INSERT INTO LuongUng(Thang,MaNV,SoTien)
VALUES('2023-11-01','NV001',500000.0)

	   ALTER TABLE nhanvien NOCHECK CONSTRAINT fk_nv_pb;
	   ALTER TABLE nhanvien NOCHECK CONSTRAINT fk_nv_cv;
	   ALTER TABLE bangchamcong NOCHECK CONSTRAINT fk_bcc;
	   ALTER TABLE thuongvakyluat NOCHECK CONSTRAINT fk_tvkl;
	   ALTER TABLE luong NOCHECK CONSTRAINT fk_luong_nv;
	   ALTER TABLE luongUng NOCHECK CONSTRAINT fk_luongUng_nv
go
--Xóa nhân viên đa bảng
create or alter proc xoaNV @manv nvarchar(255)
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
	go

--Thống kê tổng nhân viên theo phòng ban
	create or alter proc thongkeNV 
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
	go

GO

--Thống kê tổng lương chi theo tháng
CREATE OR ALTER PROC thongKeLuongThang (@date int)
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


select * from luong where MONTH(thang)=11 and year(thang)=2023 and MaNV='NV001'







SELECT 'NV' + RIGHT('000' + CAST(CAST(SUBSTRING(MAX(MaNV), 3, 3) AS INT) + 1 AS nvarchar), 3) as MaNV FROM NhanVien;

SELECT nv.* FROM  NhanVien nv 
       where
       (nv.MaNV LIKE CONCAT('%','0','%') or nv.HoTen LIKE CONCAT('%','0','%') or nv.MaPB=null or nv.MaCV= null or nv.SDT LIKE CONCAT('%','0','%'))