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
    
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<tb_NhanVien> tb_NhanVien { get; set; }
        public virtual DbSet<tb_Products> tb_Products { get; set; }
    }
}
