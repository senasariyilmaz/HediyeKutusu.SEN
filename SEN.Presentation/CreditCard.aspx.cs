using SEN.Presentation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEN.Presentation
{
    public partial class CreditCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PanelKart.Visible = true;
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            PanelKart.Visible = false;
            lblKartMesaj.Text = "Alış verişiniz başarıyla tamamlanmıştır . Kargo 1 Hafta içerisinde ulaşacaktır.Bizi tercih ettiğiniz için teşekkürler.";
           
        }
    }
}