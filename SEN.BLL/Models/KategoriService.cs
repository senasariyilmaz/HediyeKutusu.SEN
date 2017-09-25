using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
    public class KategoriService
    {
        SENDataContext ent = new SENDataContext();
        public List<Kategori> GetAllKategoriler()
        {
            var Categories = (from k in ent.Kategoriler
                              where k.silindi == false
                              select k).ToList();
            return Categories;
            
        }
    }
}
