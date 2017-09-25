using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.DAL.Core
{
   public class Kullanici
    {
        [Key]
        public int id { get; set; }
        [Required]
        [MaxLength(150)]
        public string kullaniciad { get; set; }
        [Required]
        [MaxLength(50)]
        public string Sifre { get; set; }
        [Required]
        [DefaultValue(false)]
        public bool admin { get; set; }
        [Required]
        [MaxLength(50)]
        public string ad { get; set; }
        [Required]
        [MaxLength(50)]
        public string soyad { get; set; }
        [MaxLength(11)]
        public string tckno { get; set; }
        [MaxLength(20)]
        public string telefon { get; set; }
        public string adres { get; set; }
        [MaxLength(30)]
        public string ilce { get; set; }
        [MaxLength(30)]
        public string il { get; set; }
        [Required]
        [DefaultValue(false)]
        public bool silindi { get; set; }

        public virtual List<Satis> Satislar { get; set; }

    }
}
