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
    public partial class Register : System.Web.UI.Page
    {
        KullaniciService ks = new KullaniciService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtAd.Focus();
            }
        }

        protected void btnUyeOl_Click(object sender, EventArgs e)
        {
            var user = ks.UserControl(txtEmail.Text, txtSifre.Text);
            if (user == null)
            {
                Kullanici k = new Kullanici();
                k.kullaniciad = txtEmail.Text;
                k.Sifre = txtSifre.Text;
                k.ad = txtAd.Text;
                k.soyad = txtSoyad.Text;
                k.tckno = txtTckNo.Text;
                k.telefon = txtTelefon.Text;
                k.adres = txtAdres.Text;
                k.ilce = txtIlce.Text;
                k.il = txtIl.Text;
                if (ks.UyeOl(k))
                {
                    //Session["kullanici"] = user.id;
                    //txtAd.Text = user.ad;
                    //txtSoyad.Text = user.soyad;
                    //txtAdres.Text = user.adres;
                    //txtIlce.Text = user.ilce;
                    //txtIl.Text = user.il;
                    //txtTelefon.Text = user.telefon;
                    //txtTckNo.Text = user.tckno;
                    lblMesaj.Text = "Üye kayıt işlemi tamamlanmıştır.";
                    Response.Redirect("Buy.aspx");
                }
                else { lblMesaj.Text = "Üye kayıt işlemi gerçekleşmedi!"; }
            }
            else { lblMesaj.Text = "Bu Üye zaten mevcut!"; }
           
        }

       
    }
}