//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class tb_KhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tb_KhachHang()
        {
            this.tb_Cart = new HashSet<tb_Cart>();
            this.tb_Order = new HashSet<tb_Order>();
            this.tb_Return = new HashSet<tb_Return>();
        }
    
        public int IdKhachHang { get; set; }
        public string SDT { get; set; }
        public string TenKhachHang { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Image { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public string DiaChi { get; set; }
        public Nullable<int> SoLanMua { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tb_Cart> tb_Cart { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tb_Order> tb_Order { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tb_Return> tb_Return { get; set; }
    }
}