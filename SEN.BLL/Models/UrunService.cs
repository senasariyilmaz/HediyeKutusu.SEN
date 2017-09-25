using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
   public class UrunService
    {
        SENDataContext ent = new SENDataContext();
        public List<Urun> GetUrunByID(int ID)
        {
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.urunid == ID
                            select u).ToList();
            return Products;
        }
        public List<Urun> GetAllUrunler()
        {
            var Products = (from u in ent.Urunler
                            where u.silindi == false
                            select u).ToList();
            return Products;
        }

        public List<Urun> Sectiklerimiz()
        {
            var Products = (from p in ent.Urunler
                            where p.silindi == false
                            select p).Take(4).ToList();
            return Products;
        }
        public List<Urun> GetAllUrunlerByKategori(string Kategorino)
        {
            int kno = Convert.ToInt32(Kategorino);
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.Kategori.ID == kno
                            select u).ToList();
            return Products;
        }
       
         public List<Urun> GetAllUrunlerByKategoriGiftBox(string AltKategorino)
        {
            int akno = Convert.ToInt32(AltKategorino);
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.Kategori.ID ==3 && u.AltKategori.id==akno
                            
                            select u).ToList();
            return Products;
        }
        public List<Urun> GetAllUrunlerGiftBox()
        {
           
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.Kategori.ID == 3
                            select u).ToList();
            return Products;
        }

        public List<Urun>  GetAllUrunlerByAltKategori(string AltKategorino)
        {
            int altkno = Convert.ToInt32(AltKategorino);
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.Kategori.ID==3 && u.AltKategori.id == altkno
                            select u).ToList();
            return Products;
        }
        public List<Urun> GetAllUrunlerByKategoriAndAltKategori(string Kategorino, string Altkategorino)
        {
            int kno = Convert.ToInt32(Kategorino);
            int akno = Convert.ToInt32(Altkategorino);
            var Products = (from u in ent.Urunler
                            where u.silindi == false && u.Kategori.ID == kno && u.AltKategori.id == akno
                            select u).ToList();
            return Products;
        }
        public string ResimYolu(int ID)
        {
            var resim = (from r in ent.Urunler
                         where r.urunid == ID && r.silindi == false
                         select r.urunresimyolu1).FirstOrDefault();
            return resim;
        }
    }


}
