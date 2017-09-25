using SEN.BLL.Models;
using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEN.Presentation
{
    public partial class Buy : System.Web.UI.Page
    {
        KullaniciService ks = new KullaniciService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) txtEmail.Focus();

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            var user = ks.UserControl(txtEmail.Text, txtSifre.Text);
            if (user == null)
            {
                lblMesaj.Text = "Hatalı kullanıcı ya da şifre girişi!";
                txtEmail.Focus();
            }

            else
            {
                Session["kullanici"] = user.id;
                Response.Redirect("Address.aspx");

            }
        }

        protected void btnUyeOl_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void cbxUnuttum_CheckedChanged(object sender, EventArgs e)
        {
            if (txtEmail.Text.Trim() != "")
            {
                
                Kullanici user = ks.EmailKontrol(txtEmail.Text);
                if (user != null)
                {
                   MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("hediyekutusuSEN@gmail.com", "Bau-Wissen .Net MS-Yaz2", Encoding.UTF8);                    
                    mail.To.Add(txtEmail.Text);                   
                    mail.Subject = "SEN Hediye Kutusu e-ticaret sitesi";
                    mail.Body = "Sayın, " + user.ad + "  " + user.soyad + "<br/> Şifreniz : " + user.Sifre;
                     SmtpClient sc = new SmtpClient();
                    sc.Host = "smtp.gmail.com";
                    mail.IsBodyHtml = true;
           sc.EnableSsl = true;
           sc.Port = 587;    
                    sc.Credentials = new NetworkCredential("hediyekutusuSEN@gmail.com", "SEN123456");
                    try
                    {
                        sc.Send(mail);
                        lblMesaj.Text = "Şifreniz email adresinize gönderildi";
                    }
                    catch (Exception ex)
                    {
                        string hata = ex.Message;
                    }
                }
                else { lblMesaj.Text = "Bu email adresi kayıtlı değildir."; txtEmail.Focus(); }
            }
            else { lblMesaj.Text = "Öncelikle kayıtlı email adresi girmelisiniz!"; txtEmail.Focus(); }
        }
    }
}