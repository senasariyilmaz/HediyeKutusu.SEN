using SEN.BLL.Models;
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
    public partial class ProductDetail : System.Web.UI.Page
    {
        UrunService us = new UrunService();
        cShoppingCart spt = new cShoppingCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int urunID = Convert.ToInt32(Request.QueryString["id"]);
                UrunService us = new UrunService();
                dlstProducts.DataSource = us.GetUrunByID(urunID);
                dlstProducts.DataBind();
            }
        }

        protected void dlstProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "sepet")
            {
                if (Session["sepet"] == null)
                {
                    Session["sepet"] = spt.NewShoppingCart();
                }
                DataTable dt = (DataTable)Session["sepet"]; 
                int UrunID = Convert.ToInt32(e.CommandArgument);
                Label UrunAdi = (Label)e.Item.FindControl("lblUrunAd");
                Label Fiyat = (Label)e.Item.FindControl("lblFiyat");
                string[] Degerler = Fiyat.Text.Split(' '); 
                
                TextBox Adet = (TextBox)e.Item.FindControl("txtAdet");
                bool Varmi = false;
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToInt32(dr["urunid"]) == UrunID)
                    {
                        dr["adet"] = Convert.ToInt32(dr["adet"]) + Convert.ToInt32(Adet.Text);
                        dr["tutar"] = Convert.ToDecimal(dr["tutar"]) + Convert.ToInt32(Adet.Text) * Convert.ToDecimal(Degerler[0]);
                        Varmi = true;
                        break;
                    }
                }
                if (Varmi == false)
                {
                    DataRow dr;
                    dr = dt.NewRow(); 
                    dr["urunid"] = UrunID;
                    dr["urunad"] = UrunAdi.Text;
                    dr["urunresimyolu1"] = us.ResimYolu(UrunID);
                    dr["adet"] = Convert.ToInt32(Adet.Text);
                    dr["fiyat"] = Convert.ToDecimal(Degerler[0]);
                    dr["tutar"] = Convert.ToInt32(Adet.Text) * Convert.ToDecimal(Degerler[0]);
                    dt.Rows.Add(dr); 
                }
                Session["sepet"] = dt; 
                Session["toplamadet"] = spt.ToplamAdetBul(dt);
                Session["toplamtutar"] = spt.ToplamTutarBul(dt);
                Response.Redirect("ShoppingCart.aspx");
            }

        }
    }
}
