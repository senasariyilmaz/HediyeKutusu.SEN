using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.DAL.Core
{
   public class Kategori
    {
        [Key]
        public int ID { get; set; }
        [Required]
        [MaxLength(50)]
        public string kategoriad { get; set; }
        public string aciklama { get; set; }
        [Required]
        [DefaultValue(false)]
        public bool silindi { get; set; }

        public virtual List<AltKategori> AltKategoriler { get; set; }
        public virtual List<Urun> Urunler { get; set; }
    }
}
