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
    
    public partial class tb_Return
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tb_Return()
        {
            this.tb_KhoReturn = new HashSet<tb_KhoReturn>();
        }
    
        public int ReturnId { get; set; }
        public string Code { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<bool> Confirm { get; set; }
        public Nullable<int> OrderId { get; set; }
        public Nullable<int> IdKhachHang { get; set; }
        public string Satus { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tb_KhoReturn> tb_KhoReturn { get; set; }
        public virtual tb_Order tb_Order { get; set; }
    }
}