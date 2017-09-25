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
    public partial class ucGiftBox : System.Web.UI.UserControl
    {
        UrunService us = new UrunService();
        cShoppingCart shp = new cShoppingCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string kategorino = Request.QueryString["kno"];

                if (string.IsNullOrEmpty(kategorino))
                {
                    dlstKutuUrunler.DataSource = us.GetAllUrunlerGiftBox();
                    dlstKutuUrunler.DataBind();
                }

                else
                {

                    dlstKutuUrunler.DataSource = us.GetAllUrunlerByKategoriGiftBox(kategorino);
                    dlstKutuUrunler.DataBind();
                }
            }
        }

        protected void dlstKutuUrunler_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "kutu")
            {
                if (Session["kutu"] == null)
                {
                    Session["kutu"] = shp.NewShoppingCart();

                }
                DataTable dt = (DataTable)Session["kutu"];
                int urunID = Convert.ToInt32(e.CommandArgument);
                Label urunad = (Label)e.Item.FindControl("lblUrunAd");
                Label fiyat = (Label)e.Item.FindControl("lblFiyat");
                string[] Degerler = fiyat.Text.Split(' ');
                TextBox miktar = (TextBox)e.Item.FindControl("txtMiktar");
                bool Varmi = false;
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToInt32(dr["urunid"]) == urunID)
                    {
                        dr["adet"] = Convert.ToInt32(dr["adet"]) + Convert.ToInt32(miktar.Text);
                        dr["tutar"] = Convert.ToInt32(dr["tutar"]) + Convert.ToInt32(miktar.Text) * Convert.ToDecimal(Degerler[0]);
                        Varmi = true;
                        break;
                    }
                }
                if (Varmi == false)
                {
                    DataRow dr;
                    dr = dt.NewRow();
                    dr["urunid"] = urunID;
                    dr["urunresimyolu1"] = us.ResimYolu(urunID);
                    dr["urunad"] = urunad.Text;
                    dr["adet"] = Convert.ToInt32(miktar.Text);
                    dr["fiyat"] = Convert.ToDecimal(Degerler[0]);
                    dr["tutar"] = Convert.ToInt32(miktar.Text) * Convert.ToDecimal(Degerler[0]);
                    dt.Rows.Add(dr);
                }
                Session["kutu"] = dt;

                Session["toplamadet"] = shp.ToplamAdetBul(dt);
                Session["toplamtutar"] = shp.ToplamTutarBul(dt);
                Response.Redirect("GiftBox.aspx");
            }
        }
    }
}