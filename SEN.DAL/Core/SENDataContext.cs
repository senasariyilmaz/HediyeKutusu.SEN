using SEN.DAL.Migrations;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.DAL.Core
{
  public  class SENDataContext :DbContext

    {
        public SENDataContext() : base("SENDataContext")
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<SENDataContext, Configuration>("SENDataContext"));
        }

        public DbSet<AltKategori> AltKategoriler { get; set; }
        public DbSet<Kategori> Kategoriler { get; set; }
        public DbSet<Urun> Urunler { get; set; }
        public DbSet<Kullanici> Kullanicilar { get; set; }
        public DbSet<Satis> Satislar { get; set; }
        public DbSet<SatisDetay> SatisDetaylar { get; set; }
    }
}
