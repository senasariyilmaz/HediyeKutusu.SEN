using SEN.BLL.Models;
using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEN.Presentation
{
    public partial class Shop : System.Web.UI.Page
    {
        KategoriService ks = new KategoriService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (Kategori k in ks.GetAllKategoriler())
                {
                    MenuItem mitm = new MenuItem();
                    mitm.Text = k.kategoriad;
                    mitm.Value = k.ID.ToString();
                    mnuKategoriler.Items.Add(mitm);
                  
                    foreach (AltKategori altk in k.AltKategoriler)
                    {
                        MenuItem citm = new MenuItem();
                        citm.Text = altk.altkategoriad;
                        citm.Value = altk.id.ToString();
                        mitm.ChildItems.Add(citm);
                    }
                }
            }
        }

        protected void mnuKategoriler_MenuItemClick(object sender, MenuEventArgs e)
        {

            string[] Degerler = e.Item.ValuePath.Split('/'); 
            string altkno = "0";
            if (Degerler.Length > 1)
            {
                altkno = Degerler[1];
            }
            Response.Redirect("Shop.aspx?kno=" + Degerler[0] + "&akno=" + altkno);
        }

    }
}