using SEN.DAL.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SEN.BLL.Models
{
   public class KullaniciService
    {
        SENDataContext ent = new SENDataContext();
        public Kullanici UserControl(string Email, string Sifre)
        {
            var user = (from k in ent.Kullanicilar
                        where k.kullaniciad == Email && k.Sifre == Sifre && k.silindi == false
                        select k).FirstOrDefault();
            return user;
                       
        }
        public bool AdresGuncelle(Kullanici k)
        {
            var user = (from u in ent.Kullanicilar
                        where u.id == k.id
                        select u).FirstOrDefault();
            user.kullaniciad=k.kullaniciad;
            user.telefon = k.telefon;
            user.adres = k.adres;
            user.ilce = k.ilce;
            user.il = k.il;
            try
            {
                ent.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                string hata = ex.Message;
            }
            return false;
        }
        public bool UyeOl(Kullanici k)
        {
            ent.Kullanicilar.Add(k);
            try
            {
                ent.SaveChanges();
                return true;

            }
            catch (Exception ex)
            {
                string hata = ex.Message;
            }
            return false;
        }
        public Kullanici EmailKontrol(string email)
        {
            var user = (from k in ent.Kullanicilar
                        where k.kullaniciad == email && k.silindi == false
                        select k).FirstOrDefault();
            return user;
        }
    }
}
