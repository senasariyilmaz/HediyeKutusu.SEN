using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
  public class SatisDetayService
    {
        SENDataContext ent = new SENDataContext();

        public bool SatisDetayEkleBySepet(DataTable dt, int SatisNo)
        {
            SatisDetay sd;
            foreach (DataRow dr in dt.Rows)
            {
                sd = new SatisDetay();
                sd.satisid = SatisNo;
                sd.urunid = Convert.ToInt32(dr["urunid"]);
                sd.adet = Convert.ToInt32(dr["adet"]);
                sd.birimfiyat = Convert.ToDecimal(dr["fiyat"]);
                sd.tutar = Convert.ToDecimal(dr["tutar"]);
                ent.SatisDetaylar.Add(sd); 
            }
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
    }
}
