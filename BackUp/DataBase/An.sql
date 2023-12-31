USE [CONGTYTHOITRANG]
GO
SET IDENTITY_INSERT [dbo].[tb_KhachHang] ON 

INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua]) VALUES (1, N'123', N'thuan', N'mapuucntt@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 1)
INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua]) VALUES (2, N'000', N'thuan', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (1, N'Quần', NULL, NULL, NULL, CAST(N'2023-11-09T20:47:54.160' AS DateTime), CAST(N'2023-11-09T20:47:54.160' AS DateTime), NULL, N'Quan')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (2, N'Áo', NULL, NULL, NULL, CAST(N'2023-11-09T20:47:54.160' AS DateTime), CAST(N'2023-11-09T20:47:54.160' AS DateTime), NULL, N'Áo')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (3, N'Quần Nè', NULL, NULL, NULL, CAST(N'2023-11-09T23:28:25.807' AS DateTime), CAST(N'2023-11-09T23:28:25.807' AS DateTime), NULL, N'quan-ne')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (4, N'123', NULL, NULL, NULL, CAST(N'2023-11-09T23:28:33.913' AS DateTime), CAST(N'2023-11-09T23:28:33.913' AS DateTime), NULL, N'123')
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Products] ON 

INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (15, N'a', NULL, NULL, NULL, N'/Uploads/images/SanPham/avatar.png', CAST(333330.00 AS Decimal(18, 2)), NULL, 1, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-11-10T12:24:25.303' AS DateTime), CAST(N'2023-11-10T12:24:25.303' AS DateTime), NULL, N'a', 1, 26, CAST(200000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (16, N'Quan que', NULL, NULL, NULL, N'/Uploads/images/SanPham/product_1.png', CAST(450000.00 AS Decimal(18, 2)), NULL, 1, 1, 0, 0, NULL, 3, NULL, NULL, NULL, CAST(N'2023-11-10T13:02:06.390' AS DateTime), CAST(N'2023-11-10T13:02:06.390' AS DateTime), NULL, N'quan-que', 1, 0, CAST(200000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (17, N'Áo len', NULL, NULL, NULL, N'/Uploads/images/SanPham/single_3_thumb.jpg', CAST(450000.00 AS Decimal(18, 2)), NULL, 1, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-11-10T22:51:46.893' AS DateTime), CAST(N'2023-11-10T22:51:46.893' AS DateTime), NULL, N'ao-len', 1, 0, CAST(200000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (18, N'Aso ner', NULL, NULL, NULL, N'/Uploads/images/SanPham/banner_1.jpg', CAST(123330.00 AS Decimal(18, 2)), NULL, 100, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-11-11T23:04:22.927' AS DateTime), CAST(N'2023-11-11T23:04:22.927' AS DateTime), NULL, N'aso-ner', 1, 5, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (19, N'new', NULL, NULL, NULL, NULL, CAST(33330.00 AS Decimal(18, 2)), CAST(1233330.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, CAST(N'2023-11-11T23:20:59.000' AS DateTime), CAST(N'2023-11-12T01:05:14.577' AS DateTime), NULL, N'new', NULL, 0, NULL)
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (20, N'Aso ner', NULL, NULL, NULL, NULL, CAST(1111110.00 AS Decimal(18, 2)), NULL, 1, 0, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-11-12T19:55:31.037' AS DateTime), CAST(N'2023-11-12T19:55:31.037' AS DateTime), NULL, N'aso-ner', 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[tb_Products] OFF
GO
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [Role]) VALUES (N'202105', N'0329867771', N'Gia Thuận', N'123         ', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'nam', N'quan ly                                           ')
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [Role]) VALUES (N'202266', N'123', N'thuan', N'123         ', N'm@gmail.com', N'123', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(111110.00 AS Decimal(18, 2)), N'nam', N'qu?n lý                                           ')
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [Role]) VALUES (N'237480', N'678', N'thuan', N'567         ', N'm123@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(1111110.00 AS Decimal(18, 2)), N'nam', N'qu?n lý                                           ')
GO
SET IDENTITY_INSERT [dbo].[tb_ChucNang] ON 

INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang]) VALUES (2, N'Quản Lý', N'Quan_Ly')
INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang]) VALUES (3, N'Nhân viên bán hàng', N'Nhan_Vien_Ban_Hang')
SET IDENTITY_INSERT [dbo].[tb_ChucNang] OFF
GO
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'202105', 1, N'')
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'202266', 3, N'')
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (13, 16, N'/Uploads/images/SanPham/product_1.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (14, 17, N'/Uploads/images/SanPham/single_3_thumb.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (15, 18, N'/Uploads/images/SanPham/banner_1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (16, 18, N'/Uploads/images/SanPham/product_1.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (17, 18, N'/Uploads/images/SanPham/unnamed.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (19, 19, N'/Uploads/images/SanPham/product_2.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (20, 19, N'/Uploads/images/SanPham/single_1.jpg', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (1, N'DH50560', N'213', N'123', N'123', CAST(333330.00 AS Decimal(18, 2)), 0, N'123', CAST(N'2023-11-10T16:59:56.817' AS DateTime), CAST(N'2023-11-10T16:59:56.817' AS DateTime), NULL, 0, N'123')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (2, N'DH82126', N'1213', N'123', N'1123', CAST(333330.00 AS Decimal(18, 2)), 0, N'123', CAST(N'2023-11-10T17:02:49.123' AS DateTime), CAST(N'2023-11-10T17:02:49.123' AS DateTime), NULL, 0, N'123')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (3, N'DH23510', N'123', N'123', N'123', CAST(333330.00 AS Decimal(18, 2)), 0, N'123', CAST(N'2023-11-10T17:06:25.277' AS DateTime), CAST(N'2023-11-10T17:06:25.277' AS DateTime), NULL, 0, N'123')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (4, N'DH55030', N'123', N'123', N'123', CAST(333330.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-10T17:10:13.547' AS DateTime), CAST(N'2023-11-10T17:10:13.547' AS DateTime), NULL, 0, N'132')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (5, N'DH18276', N'123', N'123', N'123', CAST(783330.00 AS Decimal(18, 2)), 2, N'123', CAST(N'2023-11-10T17:10:43.107' AS DateTime), CAST(N'2023-11-10T17:10:43.107' AS DateTime), NULL, 0, N'123')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (6, N'DH13123', N'thuan ', N'123', N'thuânnnn', CAST(333330.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-10T18:05:14.750' AS DateTime), CAST(N'2023-11-10T18:05:14.857' AS DateTime), NULL, 0, N'mapuucntt3@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (7, N'DH68630', N'thuan ', N'546', N'thuan', CAST(333330.00 AS Decimal(18, 2)), 1, N'546', CAST(N'2023-11-10T21:24:49.603' AS DateTime), CAST(N'2023-11-10T21:24:49.603' AS DateTime), NULL, 0, N'mapuucntt3@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (8, N'DH48756', N'thuân', N'123', N'tuaajn', CAST(333330.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-10T21:29:17.047' AS DateTime), CAST(N'2023-11-10T21:29:17.047' AS DateTime), NULL, 0, N'mapuucntt@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (9, N'DH26255', N'tèo ', N'123', N'123', CAST(333330.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-10T21:32:23.507' AS DateTime), CAST(N'2023-11-10T21:32:23.507' AS DateTime), NULL, 0, N'thuanhuynh941@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (10, N'DH00058', N'thuaajn aso', N'123', N'13', CAST(333330.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-10T23:30:17.907' AS DateTime), CAST(N'2023-11-10T23:30:17.907' AS DateTime), NULL, 0, N'thuanhuynh941@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (11, N'DH75220', N'thuann', N'123', N'123', CAST(1566660.00 AS Decimal(18, 2)), 2, N'123', CAST(N'2023-11-12T00:08:35.103' AS DateTime), CAST(N'2023-11-12T00:08:35.103' AS DateTime), NULL, 0, N'thuanhuynh941@gmail.com')
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (12, N'DH73186', N'thuan ', N'123', N'123', CAST(450000.00 AS Decimal(18, 2)), 1, N'123', CAST(N'2023-11-12T01:31:25.940' AS DateTime), CAST(N'2023-11-12T01:31:25.940' AS DateTime), NULL, 0, N'thuanhuynh941@gmail.com')
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] ON 

INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1, 1, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2, 2, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3, 3, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4, 4, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (5, 5, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (6, 5, 16, CAST(450000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (7, 6, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (8, 7, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (9, 8, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (10, 9, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (11, 10, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (12, 11, 15, CAST(333330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (13, 11, 19, CAST(1233330.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (14, 12, 16, CAST(450000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] OFF
GO
