using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
    public class SatisService
    {
      SENDataContext ent = new SENDataContext();
        public bool SatisEkle(Satis s)
        {
            ent.Satislar.Add(s);
            try
            {
                ent.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                string hata = ex.Message;
            }
            return false;
        }
        public int SonSatisNo(int Kullanicino)
        {
            var sat = (from s in ent.Satislar
                       where s.kullaniciid == Kullanicino && s.silindi == false
                       select s).ToList().Last();
            return sat.satisid;
           
        }
    }
}

    