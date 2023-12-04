USE [CONGTYTHOITRANG]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (1, N'Quần', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:26.500' AS DateTime), CAST(N'2023-12-02T14:38:26.500' AS DateTime), NULL, N'quan')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (2, N'Áo', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:30.117' AS DateTime), CAST(N'2023-12-02T14:38:30.117' AS DateTime), NULL, N'ao')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (3, N'Hoodie', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:36.280' AS DateTime), CAST(N'2023-12-02T14:38:36.280' AS DateTime), NULL, N'hoodie')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (4, N'Jacket', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:41.893' AS DateTime), CAST(N'2023-12-02T14:38:41.893' AS DateTime), NULL, N'jacket')
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Products] ON 

INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (1, N'BANDANA SHIRT JACKET - BLACK', NULL, NULL, NULL, N'/Uploads/images/SanPham/DC%20x%20BR%20Denim%20Racing%20Jacket%20-%20Red-Black.png', CAST(980000.00 AS Decimal(18, 2)), CAST(790000.00 AS Decimal(18, 2)), 100, 1, 0, 0, NULL, 4, NULL, NULL, NULL, CAST(N'2023-12-02T14:39:33.560' AS DateTime), CAST(N'2023-12-02T14:39:33.560' AS DateTime), NULL, N'bandana-shirt-jacket--black', 1, 0, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (2, N'ROPE PRINT RELAXED SHIRT - BLACK', NULL, NULL, NULL, N'/Uploads/images/SanPham/Rope%20Print%20Relaxed%20Shirt%20-%20Black.png', CAST(650000.00 AS Decimal(18, 2)), NULL, 99, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-12-02T14:40:08.277' AS DateTime), CAST(N'2023-12-02T14:40:08.277' AS DateTime), NULL, N'rope-print-relaxed-shirt--black', 1, 1, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (3, N'ACADEMY REGULAR POLO - CREAM', NULL, NULL, NULL, N'/Uploads/images/SanPham/Academy%20Regular%20Polo%20-%20Cream.png', CAST(790000.00 AS Decimal(18, 2)), CAST(650000.00 AS Decimal(18, 2)), 99, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-12-02T14:40:35.993' AS DateTime), CAST(N'2023-12-02T14:40:35.993' AS DateTime), NULL, N'academy-regular-polo--cream', 1, 0, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (4, N'LOGO RELAXED HOODIE - BLUE', NULL, NULL, NULL, N'/Uploads/images/SanPham/Logo%20Relaxed%20Hoodie%20-%20Blue.png', CAST(560000.00 AS Decimal(18, 2)), NULL, 98, 1, 0, 0, NULL, 3, NULL, NULL, NULL, CAST(N'2023-12-02T14:41:05.633' AS DateTime), CAST(N'2023-12-02T14:41:05.633' AS DateTime), NULL, N'logo-relaxed-hoodie--blue', 1, 0, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (5, N'FUR COLLAR SPRAY PAINT DENIM', NULL, NULL, NULL, N'/Uploads/images/SanPham/single_3.jpg', CAST(1560000.00 AS Decimal(18, 2)), CAST(980000.00 AS Decimal(18, 2)), 99, 1, 0, 0, NULL, 4, NULL, NULL, NULL, CAST(N'2023-12-02T14:41:41.463' AS DateTime), CAST(N'2023-12-02T14:41:41.463' AS DateTime), NULL, N'fur-collar-spray-paint-denim', 1, 0, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (6, N'KHAKI WORK SHORTS', NULL, NULL, NULL, N'/Uploads/images/SanPham/Khaki%20Work%20Shorts.png', CAST(920000.00 AS Decimal(18, 2)), CAST(890000.00 AS Decimal(18, 2)), 149, 1, 0, 0, NULL, 1, NULL, NULL, NULL, CAST(N'2023-12-02T14:42:41.723' AS DateTime), CAST(N'2023-12-02T14:42:41.723' AS DateTime), NULL, N'khaki-work-shorts', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[tb_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_KhachHang] ON 

INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua]) VALUES (1, N'777', N'beso', N'mapuucntt@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, N'ap 4', 1)
SET IDENTITY_INSERT [dbo].[tb_KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status]) VALUES (1, N'DH77533', N'beso', N'777', N'ap 4', CAST(2100000.00 AS Decimal(18, 2)), 0, N'777', CAST(N'2023-12-02T14:45:43.913' AS DateTime), CAST(N'2023-12-02T14:45:43.913' AS DateTime), NULL, 1, N'mapuucntt@gmail.com', 1, 0, 0, NULL)
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status]) VALUES (2, N'DH28667', N'beso', N'777', N'ap 4', CAST(1540000.00 AS Decimal(18, 2)), 0, N'777', CAST(N'2023-12-02T14:51:35.357' AS DateTime), CAST(N'2023-12-02T14:51:35.357' AS DateTime), NULL, 1, N'mapuucntt@gmail.com', 1, 0, 0, NULL)
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status]) VALUES (3, N'DH88581', N'beso', N'777', N'ap 4', CAST(650000.00 AS Decimal(18, 2)), 0, N'777', CAST(N'2023-12-02T14:53:32.847' AS DateTime), CAST(N'2023-12-02T14:53:32.847' AS DateTime), NULL, 1, N'mapuucntt@gmail.com', 1, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Cart] ON 

INSERT [dbo].[tb_Cart] ([CartId], [IdKhachHang]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[tb_Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (1, 1, N'/Uploads/images/SanPham/DC%20x%20BR%20Denim%20Racing%20Jacket%20-%20Red-Black.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (2, 2, N'/Uploads/images/SanPham/Rope%20Print%20Relaxed%20Shirt%20-%20Black-2.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (3, 2, N'/Uploads/images/SanPham/Rope%20Print%20Relaxed%20Shirt%20-%20Black.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (4, 3, N'/Uploads/images/SanPham/Academy%20Regular%20Polo%20-%20Cream.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (5, 3, N'/Uploads/images/SanPham/Academy%20Regular%20Polo%20-%20Cream-2.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (6, 4, N'/Uploads/images/SanPham/Logo%20Relaxed%20Hoodie%20-%20Blue.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (7, 5, N'/Uploads/images/SanPham/single_3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (8, 6, N'/Uploads/images/SanPham/Khaki%20Work%20Shorts.png', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ChucNang] ON 

INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang], [Createby], [CreatedDate], [ModifiedDate], [Modifeby]) VALUES (1, N'admin', N'admin', N'Gia Thuan', CAST(N'2023-12-02T14:34:24.833' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ChucNang] OFF
GO
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'202105', N'0329867771', N'Gia Thuận', N'123         ', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'nam', CAST(N'2023-12-02T14:34:30.673' AS DateTime), 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] ON 

INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (1, 1, 3, CAST(650000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (2, 1, 4, CAST(560000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (3, 1, 6, CAST(890000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (4, 2, 4, CAST(560000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (5, 2, 5, CAST(980000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity], [CartItem]) VALUES (6, 3, 2, CAST(650000.00 AS Decimal(18, 2)), 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] OFF
GO
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'202105', 1, N'')
GO
