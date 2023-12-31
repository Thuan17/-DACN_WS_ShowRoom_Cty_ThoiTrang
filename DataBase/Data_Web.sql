USE [CONGTYTHOITRANG]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (1, N'Quần', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:26.500' AS DateTime), CAST(N'2023-12-02T14:38:26.500' AS DateTime), NULL, N'quan')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (2, N'Áo', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:30.117' AS DateTime), CAST(N'2023-12-02T14:38:30.117' AS DateTime), NULL, N'ao')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (3, N'Hoodie', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:36.280' AS DateTime), CAST(N'2023-12-02T14:38:36.280' AS DateTime), NULL, N'hoodie')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (4, N'Jacket', NULL, NULL, NULL, CAST(N'2023-12-02T14:38:41.893' AS DateTime), CAST(N'2023-12-02T14:38:41.893' AS DateTime), NULL, N'jacket')
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (5, N'Sweater', NULL, NULL, NULL, CAST(N'2023-12-17T12:08:06.627' AS DateTime), CAST(N'2023-12-17T12:08:06.627' AS DateTime), NULL, N'sweater')
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Products] ON 

INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (1, N'BANDANA SHIRT JACKET - BLACK', NULL, NULL, NULL, N'/Uploads/images/SanPham/DC%20x%20BR%20Denim%20Racing%20Jacket%20-%20Red-Black.png', CAST(980000.00 AS Decimal(18, 2)), CAST(790000.00 AS Decimal(18, 2)), 1, 0, 0, NULL, 4, NULL, NULL, NULL, CAST(N'2023-12-02T14:39:33.560' AS DateTime), CAST(N'2023-12-02T14:39:33.560' AS DateTime), NULL, N'bandana-shirt-jacket--black', 1, 6, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (2, N'ROPE PRINT RELAXED SHIRT - BLACK', NULL, NULL, NULL, N'/Uploads/images/SanPham/Rope%20Print%20Relaxed%20Shirt%20-%20Black.png', CAST(650000.00 AS Decimal(18, 2)), NULL, 1, 0, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-12-02T14:40:08.277' AS DateTime), CAST(N'2023-12-02T14:40:08.277' AS DateTime), NULL, N'rope-print-relaxed-shirt--black', 1, 3, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (3, N'ACADEMY REGULAR POLO - CREAM', NULL, NULL, NULL, N'/Uploads/images/SanPham/Academy%20Regular%20Polo%20-%20Cream.png', CAST(790000.00 AS Decimal(18, 2)), CAST(650000.00 AS Decimal(18, 2)), 1, 1, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-12-02T14:40:35.993' AS DateTime), CAST(N'2023-12-02T14:40:35.993' AS DateTime), NULL, N'academy-regular-polo--cream', 1, 1, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (4, N'LOGO RELAXED HOODIE - BLUE', NULL, NULL, NULL, N'/Uploads/images/SanPham/Logo%20Relaxed%20Hoodie%20-%20Blue.png', CAST(560000.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL, 3, NULL, NULL, NULL, CAST(N'2023-12-02T14:41:05.633' AS DateTime), CAST(N'2023-12-02T14:41:05.633' AS DateTime), NULL, N'logo-relaxed-hoodie--blue', 1, 0, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (5, N'FUR COLLAR SPRAY PAINT DENIM', NULL, NULL, NULL, N'/Uploads/images/SanPham/single_3.jpg', CAST(1560000.00 AS Decimal(18, 2)), CAST(980000.00 AS Decimal(18, 2)), 1, 1, 0, NULL, 4, NULL, NULL, NULL, CAST(N'2023-12-02T14:41:41.463' AS DateTime), CAST(N'2023-12-02T14:41:41.463' AS DateTime), NULL, N'fur-collar-spray-paint-denim', 1, 2, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (6, N'KHAKI WORK SHORTS', NULL, NULL, NULL, N'/Uploads/images/SanPham/Khaki%20Work%20Shorts.png', CAST(920000.00 AS Decimal(18, 2)), CAST(890000.00 AS Decimal(18, 2)), 1, 1, 0, NULL, 1, NULL, NULL, NULL, CAST(N'2023-12-02T14:42:41.723' AS DateTime), CAST(N'2023-12-02T14:42:41.723' AS DateTime), NULL, N'khaki-work-shorts', 1, 2, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (7, N'Logo Relaxed Hoodie - Yellow', NULL, NULL, NULL, N'/Uploads/images/SanPham/Logo%20Relaxed%20Hoodie%20-%20Yellow.png', CAST(560000.00 AS Decimal(18, 2)), NULL, 1, 0, 0, NULL, 3, NULL, NULL, NULL, CAST(N'2023-12-06T23:29:01.633' AS DateTime), CAST(N'2023-12-06T23:29:01.633' AS DateTime), NULL, N'logo-relaxed-hoodie--yellow', 1, 1, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (8, N'BANDANA SHIRT JACKET - BLACK', NULL, NULL, NULL, N'/Uploads/images/SanPham/product_1.png', CAST(980000.00 AS Decimal(18, 2)), CAST(890000.00 AS Decimal(18, 2)), 1, 1, 0, NULL, 4, NULL, NULL, NULL, CAST(N'2023-12-11T13:30:49.157' AS DateTime), CAST(N'2023-12-11T13:30:49.157' AS DateTime), NULL, N'bandana-shirt-jacket--black', 1, 0, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (9, N'STRIPED RELAXED SHIRT - BLUE', NULL, NULL, NULL, N'/Uploads/images/SanPham/product_3.png', CAST(620000.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL, 2, NULL, NULL, NULL, CAST(N'2023-12-16T00:36:43.413' AS DateTime), CAST(N'2023-12-16T00:36:43.413' AS DateTime), NULL, N'striped-relaxed-shirt--blue', 1, 0, CAST(320000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (10, N'Letters Monogram Knit Sweater - Black', NULL, NULL, N'Chi tiết sản phẩm:
• Chất liệu: Cotton.
• Relaxed Fit.
• Họa tiết monogram đặc trưng của DirtyCoins được dệt trên vải.
• Bo tay áo, bo cổ và bo thân được đánh rách nhẹ.', N'/Uploads/images/SanPham/Letters%20Monogram%20Knit%20Sweater%20-%20Black-1.png', CAST(1100000.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL, 5, NULL, NULL, N'Gia Thuận', CAST(N'2023-12-17T12:15:59.023' AS DateTime), CAST(N'2023-12-17T12:15:59.217' AS DateTime), NULL, N'letters-monogram-knit-sweater--black', 1, 0, CAST(250000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Products] ([ProductId], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [ViewCount], [OrigianlPrice]) VALUES (11, N'DirtyCoins Print Cardigan - Ivory/Brown', NULL, NULL, N'Chi tiết sản phẩm:
• Chất liệu: nỉ bông.
• Relaxed Fit.
• 2 túi thân áo.
• Hoạ tiết DirtyCoins được in tràn toàn bộ thân áo.
• Ngực trái thêu logo chữ Y.', N'/Uploads/images/SanPham/DirtyCoins%20Print%20Cardigan%20-%20Ivory.png', CAST(650000.00 AS Decimal(18, 2)), NULL, 1, 0, 0, NULL, 5, NULL, NULL, N'Gia Thuận', CAST(N'2023-12-17T12:33:01.820' AS DateTime), CAST(N'2023-12-17T12:33:01.820' AS DateTime), NULL, N'dirtycoins-print-cardigan--ivorybrown', 1, 0, CAST(250000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tb_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductDetai] ON 

INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (1, 3, 98, N'Gia Thuận', CAST(N'2023-12-14T23:19:20.993' AS DateTime), NULL, NULL, NULL, 8)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (2, 1, 98, N'Gia Thuận', CAST(N'2023-12-14T23:19:35.697' AS DateTime), NULL, NULL, NULL, 8)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (3, 2, 100, N'Gia Thuận', CAST(N'2023-12-14T23:19:38.227' AS DateTime), NULL, NULL, NULL, 8)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (4, 1, 100, N'Gia Thuận', CAST(N'2023-12-14T23:19:57.690' AS DateTime), NULL, NULL, NULL, 7)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (5, 2, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:00.370' AS DateTime), NULL, NULL, NULL, 7)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (6, 3, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:02.020' AS DateTime), NULL, NULL, NULL, 7)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (7, 1, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:10.663' AS DateTime), NULL, NULL, NULL, 6)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (8, 2, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:12.450' AS DateTime), NULL, NULL, NULL, 6)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (9, 3, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:14.890' AS DateTime), NULL, NULL, NULL, 6)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (10, 1, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:25.073' AS DateTime), NULL, NULL, NULL, 5)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (11, 2, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:26.587' AS DateTime), NULL, NULL, NULL, 5)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (12, 3, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:28.797' AS DateTime), NULL, NULL, NULL, 5)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (13, 1, 92, N'Gia Thuận', CAST(N'2023-12-14T23:20:39.107' AS DateTime), NULL, NULL, NULL, 4)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (14, 2, 99, N'Gia Thuận', CAST(N'2023-12-14T23:20:40.897' AS DateTime), NULL, NULL, NULL, 4)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (15, 1, 98, N'Gia Thuận', CAST(N'2023-12-14T23:20:50.770' AS DateTime), NULL, NULL, NULL, 3)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (16, 2, 100, N'Gia Thuận', CAST(N'2023-12-14T23:20:52.447' AS DateTime), NULL, NULL, NULL, 3)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (17, 3, 94, N'Gia Thuận', CAST(N'2023-12-14T23:20:54.120' AS DateTime), NULL, NULL, NULL, 3)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (18, 1, 100, N'Gia Thuận', CAST(N'2023-12-16T00:37:06.293' AS DateTime), NULL, NULL, NULL, 9)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (19, 2, 99, N'Gia Thuận', CAST(N'2023-12-16T00:37:10.080' AS DateTime), NULL, NULL, NULL, 9)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (20, 1, 98, N'Gia Thuận', CAST(N'2023-12-17T11:53:55.063' AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (21, 2, 98, N'Gia Thuận', CAST(N'2023-12-17T11:53:57.930' AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (22, 3, 97, N'Gia Thuận', CAST(N'2023-12-17T11:53:59.640' AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[tb_ProductDetai] ([ProductDetai], [Size], [Quantity], [CreatedBy], [CreateDate], [ModifiedDate], [Modifeby], [Alias], [ProductId]) VALUES (23, 3, 99, N'Gia Thuận', CAST(N'2023-12-17T12:01:18.973' AS DateTime), NULL, NULL, NULL, 9)
SET IDENTITY_INSERT [dbo].[tb_ProductDetai] OFF
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
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (9, 7, N'/Uploads/images/SanPham/Logo%20Relaxed%20Hoodie%20-%20Yellow.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (10, 8, N'/Uploads/images/SanPham/product_1.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (11, 9, N'/Uploads/images/SanPham/product_3.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (12, 10, N'/Uploads/images/SanPham/Letters%20Monogram%20Knit%20Sweater%20-%20Black-1.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (13, 10, N'/Uploads/images/SanPham/Letters%20Monogram%20Knit%20Sweater%20-%20Black.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (14, 11, N'/Uploads/images/SanPham/DirtyCoins%20Print%20Cardigan%20-%20Ivory1.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (15, 11, N'/Uploads/images/SanPham/DirtyCoins%20Print%20Cardigan%20-%20Ivory.png', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_KhachHang] ON 

INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua], [Code]) VALUES (1, N'0970034511', N'Phan Hoài Minh', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, N'Hóc Môn', 1, NULL)
INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua], [Code]) VALUES (2, N'0970034511', N'Phan Hoài Minh', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, N'Hóc Môn', 1, NULL)
INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua], [Code]) VALUES (3, N'01212454855', N'Văn Hằng', N'Hang@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, NULL, N'Hóc Môn', 1, NULL)
INSERT [dbo].[tb_KhachHang] ([IdKhachHang], [SDT], [TenKhachHang], [Email], [Password], [Image], [Birthday], [DiaChi], [SoLanMua], [Code]) VALUES (4, N'000', N'tthuaajn', NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status], [typeReturn], [Success], [SuccessDate]) VALUES (1, N'DH07106', N'Văn Hằng', N'01212454855', N'Hóc Môn', CAST(3870000.00 AS Decimal(18, 2)), 0, N'01212454855', CAST(N'2023-12-18T22:47:59.883' AS DateTime), CAST(N'2023-12-18T22:47:59.883' AS DateTime), NULL, 1, N'Hang@gmail.com', 3, 0, 1, NULL, 0, 1, CAST(N'2023-12-18T22:56:58.590' AS DateTime))
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status], [typeReturn], [Success], [SuccessDate]) VALUES (2, N'DH24265', N'Văn Hằng', N'01212454855', N'Hóc Môn', CAST(1210000.00 AS Decimal(18, 2)), 0, N'01212454855', CAST(N'2023-12-18T23:07:20.293' AS DateTime), CAST(N'2023-12-18T23:07:20.293' AS DateTime), NULL, 1, N'Hang@gmail.com', 3, 0, 1, NULL, 0, 0, NULL)
INSERT [dbo].[tb_Order] ([OrderId], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email], [IdKhachHang], [typeOrder], [Confirm], [Status], [typeReturn], [Success], [SuccessDate]) VALUES (3, N'DH28175', N'Văn Hằng', N'01212454855', N'Hóc Môn', CAST(650000.00 AS Decimal(18, 2)), 0, N'01212454855', CAST(N'2023-12-18T23:20:09.230' AS DateTime), CAST(N'2023-12-18T23:20:09.230' AS DateTime), NULL, 1, N'Hang@gmail.com', 3, 1, 0, N'Thay đổi phương thức thanh toán', 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] ON 

INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [Price], [Quantity], [CartItem], [damagedProduct], [ProductDetai]) VALUES (1, 1, CAST(650000.00 AS Decimal(18, 2)), 5, NULL, NULL, 17)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [Price], [Quantity], [CartItem], [damagedProduct], [ProductDetai]) VALUES (2, 1, CAST(620000.00 AS Decimal(18, 2)), 1, NULL, NULL, 19)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [Price], [Quantity], [CartItem], [damagedProduct], [ProductDetai]) VALUES (3, 2, CAST(650000.00 AS Decimal(18, 2)), 1, NULL, NULL, 17)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [Price], [Quantity], [CartItem], [damagedProduct], [ProductDetai]) VALUES (4, 2, CAST(560000.00 AS Decimal(18, 2)), 1, NULL, NULL, 13)
INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [Price], [Quantity], [CartItem], [damagedProduct], [ProductDetai]) VALUES (5, 3, CAST(650000.00 AS Decimal(18, 2)), 1, NULL, NULL, 17)
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Seller] ON 

INSERT [dbo].[tb_Seller] ([SellerId], [Code], [CustomerName], [Phone], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment]) VALUES (1, N'HD2655', N'tthuaajn', N'000', CAST(650000.00 AS Decimal(18, 2)), 0, N'Phan Chí Cường ', CAST(N'2023-12-19T00:25:16.370' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_Seller] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_SellerDetail] ON 

INSERT [dbo].[tb_SellerDetail] ([Id], [SellerId], [Price], [Quantity], [ProductDetai]) VALUES (1, 1, CAST(650000.00 AS Decimal(18, 2)), 1, 22)
SET IDENTITY_INSERT [dbo].[tb_SellerDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Cart] ON 

INSERT [dbo].[tb_Cart] ([CartId], [IdKhachHang]) VALUES (1, 2)
INSERT [dbo].[tb_Cart] ([CartId], [IdKhachHang]) VALUES (2, 1)
INSERT [dbo].[tb_Cart] ([CartId], [IdKhachHang]) VALUES (3, 3)
INSERT [dbo].[tb_Cart] ([CartId], [IdKhachHang]) VALUES (4, 4)
SET IDENTITY_INSERT [dbo].[tb_Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_CartItem] ON 

INSERT [dbo].[tb_CartItem] ([CartItem], [CartId], [ProductId], [Quantity], [Price], [PriceTotal], [TemPrice], [ProductDetai]) VALUES (7, 3, 0, 1, CAST(560000 AS Decimal(18, 0)), CAST(560000 AS Decimal(18, 0)), CAST(560000 AS Decimal(18, 0)), 14)
SET IDENTITY_INSERT [dbo].[tb_CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ChucNang] ON 

INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang], [Createby], [CreatedDate], [ModifiedDate], [Modifeby]) VALUES (1, N'admin', N'admin', N'Gia Thuan', CAST(N'2023-12-05T20:54:55.497' AS DateTime), NULL, NULL)
INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang], [Createby], [CreatedDate], [ModifiedDate], [Modifeby]) VALUES (2, N'Quản Lý', N'quan-ly', N'Gia Thuận', CAST(N'2023-12-05T21:03:33.400' AS DateTime), NULL, NULL)
INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang], [Createby], [CreatedDate], [ModifiedDate], [Modifeby]) VALUES (3, N'Quản lý kho hàng', N'quan-ly-kho-hang', N'Gia Thuận', CAST(N'2023-12-05T21:03:39.300' AS DateTime), NULL, NULL)
INSERT [dbo].[tb_ChucNang] ([IdChucNang], [TenChucNang], [MaChucNang], [Createby], [CreatedDate], [ModifiedDate], [Modifeby]) VALUES (4, N'Nhân viên bán hàng', N'nhan-vien-ban-hang', N'Gia Thuận', CAST(N'2023-12-05T21:04:16.637' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ChucNang] OFF
GO
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'202105', N'0329867771', N'Gia Thuận', N'123         ', N'mapuucntt3@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-11-12' AS Date), N'ấp 4', CAST(N'2023-11-12' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'nam', CAST(N'2023-12-05T20:55:05.317' AS DateTime), 1, NULL)
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'260761', N'0534347000', N'Lê Thành An', N'453453      ', N' An@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2023-03-20' AS Date), N'Tiền Giang', CAST(N'2023-12-05' AS Date), CAST(12300000.00 AS Decimal(18, 2)), N'Nữ', CAST(N'2023-12-05T21:04:55.320' AS DateTime), 2, NULL)
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'263262', N'0546809833', N'Phan Chí Cường ', N'0546809833  ', N'Cuong@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-10-16' AS Date), N'Hóc Môn', CAST(N'2023-12-08' AS Date), CAST(15000000.00 AS Decimal(18, 2)), N'Nữ', CAST(N'2023-12-08T23:42:06.413' AS DateTime), 4, NULL)
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'263445', N'089994554', N'Phạm Lê Tuấn Anh', N'124554      ', N'Anh@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2003-03-10' AS Date), N'Hóc Môn', CAST(N'2023-12-05' AS Date), CAST(14000000.00 AS Decimal(18, 2)), N'Nữ', CAST(N'2023-12-05T21:06:17.110' AS DateTime), 3, NULL)
INSERT [dbo].[tb_NhanVien] ([MSNV], [SDT], [TenNhanVien], [CCCD], [Email], [Password], [Image], [Birthday], [DiaChi], [NgayVaoLam], [Luong], [GioiTinh], [CreatedDate], [IdChucNang], [ModifiedDate]) VALUES (N'288503', N'0978664412', N'Mai Ngọc Khang', N'5678678     ', N'Khang@gmail.com', N'202cb962ac59075b964b07152d234b70', NULL, CAST(N'2002-01-23' AS Date), N'Hóc Môn', CAST(N'2023-12-05' AS Date), CAST(10000000.00 AS Decimal(18, 2)), N'Nữ', CAST(N'2023-12-05T21:05:30.000' AS DateTime), 1, CAST(N'2023-12-19T00:13:07.960' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tb_Kho] ON 

INSERT [dbo].[tb_Kho] ([Idkho], [DiaChi], [Createby], [ModifiedDate], [CreatedDate], [Modifeby]) VALUES (1, N'Hóc Môn', N'Gia Thuận ', CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2023-12-06T00:00:00.000' AS DateTime), N'Gia Thuận')
SET IDENTITY_INSERT [dbo].[tb_Kho] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_KhoXuat] ON 

INSERT [dbo].[tb_KhoXuat] ([IdKhoXuat], [OutDate], [OutBy], [OrderId], [Idkho], [MSNV]) VALUES (1, CAST(N'2023-12-18T22:56:40.993' AS DateTime), N'Phạm Lê Tuấn Anh', 1, 1, N'263445')
INSERT [dbo].[tb_KhoXuat] ([IdKhoXuat], [OutDate], [OutBy], [OrderId], [Idkho], [MSNV]) VALUES (2, CAST(N'2023-12-18T23:13:03.857' AS DateTime), N'Phạm Lê Tuấn Anh', 2, 1, N'263445')
SET IDENTITY_INSERT [dbo].[tb_KhoXuat] OFF
GO
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'202105', 1, N'')
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'260761', 2, NULL)
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'263262', 4, NULL)
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'263445', 3, NULL)
INSERT [dbo].[tb_PhanQuyen] ([MSNV], [IdChucNang], [GhiChu]) VALUES (N'288503', 2, NULL)
GO
