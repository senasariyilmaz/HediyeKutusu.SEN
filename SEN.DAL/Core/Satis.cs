using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.DAL.Core
{
   public class Satis
    {
        [Key]
        public int satisid { get; set; }
        [Required]
        public DateTime tarih { get; set; }
        [Required]
        public decimal tutar { get; set; }
        [Required]
        public int miktar { get; set; }
        public int kullaniciid { get; set; }

        [Required]
        public DateTime teslimtarihi { get; set; }
        public byte durumu { get; set; }
        [Required]
        [DefaultValue(false)]
        public bool silindi { get; set; }

        public virtual List<SatisDetay> SatisDetaylari { get; set; }
        public virtual Kullanici Kullanici { get; set; }
    }
}
