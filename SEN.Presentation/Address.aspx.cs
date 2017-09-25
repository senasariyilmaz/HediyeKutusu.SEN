using SEN.BLL.Models;
using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEN.Presentation
{
    public partial class Address : System.Web.UI.Page
    {

        KullaniciService ks = new KullaniciService();
        SatisService ss = new SatisService();
        SatisDetayService sds = new SatisDetayService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtEmail.Focus();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Kullanici k = new Kullanici();
            k.id = Convert.ToInt32(Session["kullanici"]);
            k.kullaniciad = txtEmail.Text;
            k.telefon = txtTelefon.Text;
            k.adres = txtAdres.Text;
            k.ilce = txtIlce.Text;
            k.il = txtIl.Text;
            if (ks.AdresGuncelle(k))
            {
                lblAdresMesaj.Text = "Adres bilgileriniz güncellenmiştir.";
                Satis s = new Satis();
                s.tarih = DateTime.Now;
                s.miktar = Convert.ToInt32(Session["toplamadet"]);
                s.tutar = Convert.ToDecimal(Session["toplamtutar"]);
                s.kullaniciid = k.id;
                s.teslimtarihi = DateTime.Now.AddDays(2);
                s.durumu = (byte)Models.Enums.SatisDurumu.siparis;
                if (ss.SatisEkle(s))
                {
                    DataTable dt = (DataTable)Session["sepet"];
                    int SonSatisNo = ss.SonSatisNo(s.kullaniciid);
                    if (sds.SatisDetayEkleBySepet(dt, SonSatisNo))
                    {
                        lblAdresMesaj.Text = "Sepet bilgileri aktarılmıştır.";
                     
                    }
                    else { lblAdresMesaj.Text = "Siparişleriniz aktarılamadı, yeniden deneyiniz."; }

                    Response.Redirect("CreditCard.aspx");
                }
            }
        }
    }
}