using SEN.BLL.Models;
using SEN.DAL.Core;
using SEN.Presentation.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEN.Presentation
{
    public partial class GiftBox : System.Web.UI.Page
    {
        AltKategoriService ks = new AltKategoriService();
        cShoppingCart shp = new cShoppingCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                foreach (AltKategori altk in ks.GetAllAltKategoriler())
                {
                    MenuItem mitm = new MenuItem();
                    mitm.Text = altk.altkategoriad;
                    mitm.Value = altk.id.ToString();
                    mnuKategoriler.Items.Add(mitm);


                }
                DataTable dt = (DataTable)Session["kutu"];
                KutuGoster(dt);
            }

        }

        protected void mnuKategoriler_MenuItemClick(object sender, MenuEventArgs e)
        {
            string Degerler = e.Item.Value;


            Response.Redirect("GiftBox.aspx?kno=" + Degerler);
        }


        protected void KutuGoster(DataTable dt)
        {
            repKutu.DataSource = dt;
            repKutu.DataBind();
        }

        protected void repKutu_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                DataTable dt = (DataTable)Session["kutu"];
                dt.Rows.RemoveAt(e.Item.ItemIndex);
                Session["kutu"] = dt;
                Session["toplamadet"] = shp.ToplamAdetBul(dt);
                Session["toplamtutar"] = shp.ToplamTutarBul(dt);
                KutuGoster(dt);
            }

            if (e.CommandName == "kutugonder")
            {
                DataTable dt = (DataTable)Session["kutu"];
                Session["sepet"] = dt;
                Response.Redirect("ShoppingCart.aspx");
            }
        }
    }
}