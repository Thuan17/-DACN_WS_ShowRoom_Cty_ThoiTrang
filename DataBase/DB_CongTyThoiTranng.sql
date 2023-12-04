create database CONGTYTHOITRANG
go 

use CONGTYTHOITRANG
go


--//////////////////////////////////// Table






create table tb_Products(
	ProductId int IDENTITY(1,1) not null primary key ,
	Title nvarchar(250),
	ProductCode nvarchar(50),
	Description nvarchar(max),
	Detail nvarchar(max),
	Image nvarchar(250),
	Price decimal(18,2),
	PriceSale decimal(18,2),
	Quantity int ,
	IsHome bit ,
	IsSale bit ,
	IsFeature bit,
	IsHot bit ,
	ProductCategoryId int ,
	SeoTitle nvarchar(250),
	SeoDescription nvarchar(250),
	CreatedBy nvarchar(250),
	CreateDate DateTime ,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	Alias nvarchar(250)Null,
	IsActive bit,
	ViewCount int  Not NUll,
	OrigianlPrice decimal(18,2)

)
go


create table tb_ProductCategory(
	ProductCategoryId int IDENTITY(1,1) NOT NULL primary key ,
	Title nvarchar(150) NOT NULL,
	Description nvarchar(max) NULL,
	Icon nvarchar(250) NULL,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime NOT NULL,
	Modifiedby nvarchar(max) NULL,
	Alias nvarchar(150) NOT NULL,
)
go



Create table tb_ProductImage(
	Id int IDENTITY(1,1) NOT NULL  primary key ,
	ProductId int NOT NULL,
	Image nvarchar(max) NULL,
	IsDefault bit NOT NULL,
	
)
go


create table tb_Order(
	OrderId int IDENTITY(1,1) NOT NULL primary key,
	Code nvarchar(max) NOT NULL,
	CustomerName nvarchar(max) NOT NULL,
	Phone nvarchar(max) NOT NULL,
	Address nvarchar(max) NOT NULL,
	TotalAmount [decimal](18, 2) NOT NULL,
	Quantity int NOT NULL,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime NOT NULL,
	Modifiedby nvarchar(max) NULL,
	TypePayment int NOT NULL,
	Email nvarchar(max) NULL,
	IdKhachHang int ,
	typeOrder bit,
	Confirm bit,
	Status nvarchar(max),
	typeReturn bit,
	Success bit

)
go






create table tb_OrderDetail (
	Id int IDENTITY(1,1) NOT NULL primary key ,
	OrderId int NOT NULL,
	ProductId int NOT NULL,
	Price decimal(18, 2) NOT NULL,
	Quantity int NOT NULL,
	CartItem int
)
go


create table tb_Cart(
	CartId int IDENTITY(1,1) NOT NULL primary key ,
	IdKhachHang  int,

)
go

create table tb_CartItem (
	CartItem int IDENTITY(1,1) NOT NULL primary key ,
	CartId int NOT NULL,
	ProductId int NOT NULL,
	Quantity int NOT NULL,
	Price decimal (18,0) Not null,
	 PriceTotal decimal (18,0) Not null,
	TemPrice decimal (18,0) not null,	
)
go
create  TABLE tb_NhanVien(
	MSNV varchar(10)PRIMARY KEY Not null,
	SDT VARCHAR(15)  Not null,
    TenNhanVien NVARCHAR(max) not null,
	CCCD char(12)not null,
    Email VARCHAR(100)not null,
    Password  varchar(100) not null,
	Image nvarchar(250) null,
	Birthday Date not null ,
	DiaChi nvarchar(max)not null,
	NgayVaoLam date ,
	Luong decimal(18,2)NOT NULL,
	GioiTinh nvarchar(7),
	CreatedDate datetime,
	IdChucNang int,
	ModifiedDate datetime 
)
go



Create table tb_NhanVienImage(
	Id int IDENTITY(1,1) NOT NULL  primary key ,
	MSNV varchar(10) NOT NULL,
	Image nvarchar(max) NULL,
	IsDefault bit NOT NULL,
	
)
go




create  table tb_ChucNang (
	IdChucNang int IDENTITY(1,1) NOT NULL primary key ,
	TenChucNang nvarchar (max),
	MaChucNang nvarchar(max),
	Createby nvarchar(max),
	CreatedDate datetime,
	ModifiedDate datetime,
	Modifeby nvarchar(max)
)
go


create  table tb_PhanQuyen (
 	MSNV varchar(10)Not null,
	IdChucNang int Not null,
	GhiChu nvarchar(max),
	PRIMARY KEY(MSNV,IdChucNang)
)
go

create  TABLE tb_KhachHang (
	IdKhachHang  int IDENTITY(1,1) NOT NULL primary key ,
    SDT VARCHAR(15)  ,
    TenKhachHang NVARCHAR(max) not null,
    Email VARCHAR(100)not null,
    Password  varchar(100) not null,
	Image nvarchar(250) null,
	Birthday Date null ,
	DiaChi nvarchar(max)null,
	SoLanMua int, 
	
)
go






--drop table tb_Return (
--	ReturnId int IDENTITY(1,1) not null primary key ,
--	IdKhachHang int,
--)
--go

--drop table tb_ReturnDetail(
--	ReturnDetailId int IDENTITY(1,1) not null primary key ,
--	ProductId int ,
--	Price decimal(18,2),
--	Quantity int ,
--	ReturnId int ,
--	OrderId int
--)
--go

create table tb_Kho (
	Idkho int IDENTITY(1,1) not null primary key ,
	DiaChi nvarchar(max),
	Createby nvarchar(max),
	ModifiedDate datetime,
	CreatedDate datetime,
	Modifeby nvarchar(max),
)
go




create table tb_KhoXuat(
	IdKhoXuat int IDENTITY(1,1) not null primary key ,
	OutDate datetime NOT NULL,
	OutBy nvarchar(max),

	OrderId int ,
		Idkho int ,
MSNV varchar(10) NOT NULL,
)
go

 

create table tb_KhoNhap(
	IdKhoNhap int IDENTITY(1,1) NOT NULL primary key ,
	ImportDate datetime NOT NULL,
	ImportBy nvarchar(max) NOT NULL,
	ProductId int NOT NULL,
	SoLuong int NOT NULL,
	MaPhieuNhap char(15) NOT NULL,
	ModifiedDate datetime NULL,
	Modifeby nvarchar(max) NULL,
	MSNV varchar(10)  NOT NULL,
	IdKho int   NOT NULL,
)
go

create table tb_KhoReturn(
	IdKhoXuat int IDENTITY(1,1) NOT NULL primary key ,
	ReturnDate datetime NOT NULL,
	ReturnBy nvarchar(max) NOT NULL,
	MSNV varchar(10) NOT NULL,
	ReturnId int NULL,
	OrderId int NULL,
	IdKho int NULL,
)
go


-----------------------------------------------------------------------FK 

alter table tb_NhanVienImage
add constraint ImgNhanVien
foreign key (MSNV)
references tb_NhanVien 

alter table tb_KhoXuat
add constraint KhoXuattoKho
foreign key (IdKho)
references tb_Kho



alter table tb_KhoXuat
add constraint KhoXuattoNhanVien
foreign key (MSNV)
references  tb_NhanVien


alter table tb_KhoReturn
add constraint KhoReturntoNhanVien
foreign key (MSNV)
references tb_NhanVien


alter table tb_KhoReturn
add constraint KhoReturntoKho
foreign key (IdKho)
references tb_Kho


alter table tb_KhoReturn
add constraint KhoReturntoOrder
foreign key (OrderId)
references tb_Order





alter table tb_KhoNhap
add constraint KhoNhaptoNhanVien
foreign key (MSNV)
references tb_NhanVien



alter table tb_KhoNhap
add constraint KhoNhaptoKho
foreign key (IdKho)
references tb_Kho




alter table tb_KhoXuat
add constraint KhoXuattoOrder
foreign key (OrderId)
references tb_Order




alter table tb_CartItem
add constraint ChiTietGioHangtoSanPham
foreign key (ProductId)
references tb_Products 

alter table tb_Products
add constraint ProductstoProductCategory
foreign key (ProductCategoryId)
references tb_ProductCategory 

alter table tb_ProductImage
add constraint ProImgtoProduc
foreign key (ProductId)
references tb_Products 

alter table tb_OrderDetail
add constraint tb_OrderDetail_toi_tb_Order
foreign key (OrderId)
references tb_Order 



alter table tb_Cart
add constraint GioHangtoKhachHang
foreign key (IdKhachHang)
references tb_KhachHang 


alter table tb_CartItem
add constraint ChiTietGioHangtoGioHang1
foreign key (CartId)
references tb_Cart 
 

alter table tb_PhanQuyen
add constraint PQuyentoNhanVien
foreign key (MSNV)
references tb_NhanVien 


alter table tb_PhanQuyen
add constraint PQuyentoChucNang
foreign key (IdChucNang)
references tb_ChucNang 

alter table   tb_NhanVien
add constraint NhanVientoChucVu
foreign key (IdChucNang)
references tb_ChucNang



alter table tb_Order
add constraint OrdertoKhachHang
foreign key (IdKhachHang)
references tb_KhachHang


alter table tb_OrderDetail
add constraint OrderDetailtoProducts
foreign key (ProductId)
references tb_Products



-----------------------------------------------------------------------TRIGGER
CREATE TRIGGER trg_UpdateIshome
ON tb_Products -- Thay YourTableName bằng tên bảng thực tế của bạn
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(quantity)
    BEGIN
        UPDATE tb_Products
        SET ishome = 0
        FROM inserted i
        WHERE tb_Products.ProductID = i.ProductID
          AND i.quantity = 0;
    END
END;


-- Tạo trigger khi khhách hàng đăng ký sẽ tạo luôn cart

CREATE TRIGGER CreateCartOnInsertKhachHang
ON tb_KhachHang
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Chèn dữ liệu mới vào bảng tb_Cart
    INSERT INTO tb_Cart (IdKhachHang)
    SELECT IdKhachHang
    FROM inserted;
END;



CREATE TRIGGER CreateReturnOnInsertKhachHang
ON tb_KhachHang
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Chèn dữ liệu mới vào bảng tb_Cart
    INSERT INTO tb_Return (IdKhachHang)
    SELECT IdKhachHang
    FROM inserted;
END;


-----------------------------------------------------------------------DATA


select * from tb_ProductCategory


select * from tb_NhanVien



select * from tb_KhachHang

select * from tb_KhoNhap


select * from tb_Order

select * from tb_KhoXuat
select * from tb_OrderDetail
select * from tb_Products

select * from tb_PhanQuyen
select * from tb_ChucNang


select * from tb_KhoNhap
select * from tb_KhoXuat
select * from tb_ChucNang


select * from tb_Cart
select * from tb_CartItem
select * from tb_KhachHang
select * from tb_ChucNang
INSERT into tb_ChucNang VALUES ( N'admin', N'admin',N'Gia Thuan',GETDATE(), NULL, NULL)


INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'202105', 1, N'')



select * from tb_Products

insert into  tb_Cart values ('1') 
insert into  tb_Cart values ('2') 

INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua]) VALUES ('123', N'thuan', N'mapuucntt@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 1)
select * from tb_NhanVien



INSERT into  tb_NhanVien VALUES (N'202105', N'0329867771', N'Gia Thuận', N'123         ', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'nam',GETDATE(),1 ,null )  

 