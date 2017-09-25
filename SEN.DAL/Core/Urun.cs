using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.DAL.Core
{
   public class Urun
    {
        [Key]
        public int urunid { get; set; }
        [Required]
        [MaxLength(20)]
        public string urunkodu { get; set; }
        [Required]
        [MaxLength(100)]
        public string urunad { get; set; }
        public int? kategoriid { get; set; }
        public int? altkategoriid { get; set; }
        [Required]
        public int miktar { get; set; }
        [Required]
        public decimal urunfiyat { get; set; }
        [MaxLength(150)]
        public string urunresimyolu1 { get; set; }
        [MaxLength(150)]
        public string urunresimyolu2 { get; set; }
        [MaxLength(150)]
        public string urunresimyolu3 { get; set; }
        [MaxLength(150)]
        public string urunresimyolu4 { get; set; }
        public string urunbilgisi { get; set; }
        [Required]
        [DefaultValue(false)]
        public bool silindi { get; set; }

        public virtual Kategori Kategori { get; set; }
        public virtual AltKategori AltKategori { get; set; }
        public virtual List<SatisDetay> SatisDetaylari { get; set; }
    }
}
