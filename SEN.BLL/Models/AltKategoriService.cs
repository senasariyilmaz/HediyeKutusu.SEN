using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
    public class AltKategoriService
    {
        SENDataContext ent = new SENDataContext();
        public List<AltKategori> GetAllAltKategoriler()
        {
            var ALTK = (from altk in ent.AltKategoriler
                        where altk.silindi == false && altk.kategoriid == 3
                        select altk).ToList();
            return ALTK;

        }
    }
}
