//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    public partial class usr
    {
        public usr()
        {
            this.products = new HashSet<product>();
            this.tbl_invoice = new HashSet<tbl_invoice>();
            this.tbl_order = new HashSet<tbl_order>();
        }


    
        public int u_id { get; set; }
        public string u_name { get; set; }
        public string u_pass { get; set; }
        [Required(ErrorMessage = "*Required!")]
        [RegularExpression(@"^[a-zA-Z0-9._%+-]+@gmail\.com$", ErrorMessage = "Only Gmail addresses are allowed!!")]
        public string u_mail { get; set; }
        public string u_img { get; set; }
        [Required(ErrorMessage = "*Required!")]
        [RegularExpression(@"^01[3-9]\d{8}$", ErrorMessage = "Only Bangladeshi Phone Number Is Applicable!!")]
        public string u_contact { get; set; }
        public string nid_img { get; set; }
        [Required(ErrorMessage = "*Required!")]
        [RegularExpression(@"^\d{10}$", ErrorMessage = "Input valid NID no!!")]
        public string nid_no { get; set; }
        public string status { get; set; }
    
        public virtual ICollection<product> products { get; set; }
        public virtual ICollection<tbl_invoice> tbl_invoice { get; set; }
        public virtual ICollection<tbl_order> tbl_order { get; set; }
    }
}
