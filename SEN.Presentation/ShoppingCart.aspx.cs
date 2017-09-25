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
    public partial class ShoppingCart : System.Web.UI.Page
    {
        cShoppingCart shp = new cShoppingCart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = (DataTable)Session["sepet"];
                SepetGoster(dt);
            }
        }
        protected void SepetGoster(DataTable dt)
        {
            repShoppingCart.DataSource = dt;
            repShoppingCart.DataBind();
        }

        protected void repShoppingCart_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                DataTable dt = (DataTable)Session["sepet"];
                dt.Rows.RemoveAt(e.Item.ItemIndex);
                Session["sepet"] = dt;
                Session["toplamadet"] = shp.ToplamAdetBul(dt);
                Session["toplamtutar"] = shp.ToplamTutarBul(dt);
                SepetGoster(dt);
            }
        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            dt.Rows.Clear();
            Session["sepet"] = dt;
            Session["toplamadet"] = 0;
            Session["toplamtutar"] = 0;
            SepetGoster(dt);
        }
    }
}