﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WSite_ShowRoom_CtyThoiTrang.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CONGTYTHOITRANGEntities : DbContext
    {
        public CONGTYTHOITRANGEntities()
            : base("name=CONGTYTHOITRANGEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<tb_Cart> tb_Cart { get; set; }
        public virtual DbSet<tb_CartItem> tb_CartItem { get; set; }
        public virtual DbSet<tb_ChucNang> tb_ChucNang { get; set; }
        public virtual DbSet<tb_KhachHang> tb_KhachHang { get; set; }
        public virtual DbSet<tb_Kho> tb_Kho { get; set; }
        public virtual DbSet<tb_KhoNhap> tb_KhoNhap { get; set; }
        public virtual DbSet<tb_KhoReturn> tb_KhoReturn { get; set; }
        public virtual DbSet<tb_KhoXuat> tb_KhoXuat { get; set; }
        public virtual DbSet<tb_NhanVien> tb_NhanVien { get; set; }
        public virtual DbSet<tb_NhanVienImage> tb_NhanVienImage { get; set; }
        public virtual DbSet<tb_Order> tb_Order { get; set; }
        public virtual DbSet<tb_OrderDetail> tb_OrderDetail { get; set; }
        public virtual DbSet<tb_ProductCategory> tb_ProductCategory { get; set; }
        public virtual DbSet<tb_ProductImage> tb_ProductImage { get; set; }
        public virtual DbSet<tb_Products> tb_Products { get; set; }
        public virtual DbSet<tb_PhanQuyen> tb_PhanQuyen { get; set; }
        public virtual DbSet<tb_Return> tb_Return { get; set; }
        public virtual DbSet<tb_ReturnDetail> tb_ReturnDetail { get; set; }
    }
}
