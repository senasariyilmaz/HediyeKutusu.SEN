using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SEN.Presentation.Models
{
    public class cShoppingCart
    {
        public DataTable NewShoppingCart()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("sepetID");
            dt.Columns["sepetID"].DataType = typeof(int);
            dt.Columns["sepetID"].AutoIncrement = true;
            dt.Columns["sepetID"].AutoIncrementSeed = 1;
            dt.Columns["sepetID"].AutoIncrementStep = 1;

            dt.Columns.Add("urunresimyolu1");
            dt.Columns["urunresimyolu1"].DataType = typeof(string);

            dt.Columns.Add("urunid");
            dt.Columns["urunid"].DataType = typeof(int);

            dt.Columns.Add("urunad");
            dt.Columns["urunad"].DataType = typeof(string);

            dt.Columns.Add("adet");
            dt.Columns["adet"].DataType = typeof(int);
            dt.Columns["adet"].DefaultValue = 1;

            dt.Columns.Add("fiyat");
            dt.Columns["fiyat"].DataType = typeof(decimal);
            dt.Columns["fiyat"].DefaultValue = 0;

            dt.Columns.Add("tutar");
            dt.Columns["tutar"].DataType = typeof(decimal);
            dt.Columns["tutar"].DefaultValue = 0;

            return dt;
        }
        public DataTable NewGiftBox()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("kutuID");
            dt.Columns["kutuID"].DataType = typeof(int);
            dt.Columns["kutuID"].AutoIncrement = true;
            dt.Columns["kutuID"].AutoIncrementSeed = 1;
            dt.Columns["kutuID"].AutoIncrementStep = 1;

            dt.Columns.Add("urunid");
            dt.Columns["urunid"].DataType = typeof(int);

            dt.Columns.Add("urunresimyolu1");
            dt.Columns["urunresimyolu1"].DataType = typeof(string);

            dt.Columns.Add("urunad");
            dt.Columns["urunad"].DataType = typeof(string);

            dt.Columns.Add("adet");
            dt.Columns["adet"].DataType = typeof(int);
            dt.Columns["adet"].DefaultValue = 1;

            dt.Columns.Add("fiyat");
            dt.Columns["fiyat"].DataType = typeof(decimal);
            dt.Columns["fiyat"].DefaultValue = 0;

            dt.Columns.Add("tutar");
            dt.Columns["tutar"].DataType = typeof(decimal);
            dt.Columns["tutar"].DefaultValue = 0;

            return dt;
        }

        public int ToplamAdetBul(DataTable dt)
        {
            int ToplamAdet = 0;
            foreach (DataRow dr in dt.Rows)
            {
                ToplamAdet += Convert.ToInt32(dr["adet"]);
            }
            return ToplamAdet;
        }
        public decimal ToplamTutarBul(DataTable dt)
        {
            decimal ToplamTutar = 0;
            foreach (DataRow dr in dt.Rows)
            {
                ToplamTutar += Convert.ToDecimal(dr["tutar"]);
            }
            return ToplamTutar;
        }
    }
}