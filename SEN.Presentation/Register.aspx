<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SEN.Presentation.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="shop_top">
            <div class="container">

                <div class="register-top-grid">
                    <h3>KİŞİSEL BİLGİLER</h3>
               

                        <div>
                            <span>Ad :</span>
                            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAd" runat="server" ControlToValidate="txtAd" ErrorMessage="Adınızı Boş Bırakamazsınız!" Text="*"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <span>Soyad :</span>
                            <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSoyad" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Soyadınızı Boş Bırakamazsınız!" Text="*"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <span>T.C.Kimlik No :</span>
                            <asp:TextBox ID="txtTckNo" runat="server" MaxLength="11"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTckNo" ErrorMessage="TCKimlik No boş geçilmemelidir." Text="*"></asp:RequiredFieldValidator>
                        </div>
                
                   
                </div>
              <div class="clear"></div>
              
                    <div class="register-bottom-grid">
                        <h3>GİRİŞ BİLGİLERİ</h3>
                        <div>
                            <span>Şifre</span>
                            <asp:TextBox CssClass="form-control" ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvSifre" runat="server" ErrorMessage="şifre boş geçilmemelidir." ControlToValidate="txtSifre" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                        <div>
                            <span>Şifreyi Onayla</span>
                            <asp:TextBox CssClass="form-control" ID="txtSifreOnay" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSifreTekrar" runat="server" ErrorMessage="şifre tekrar boş geçilmemelidir." ControlToValidate="txtSifreOnay" Text="*" ForeColor="Red"></asp:RequiredFieldValidator><asp:CompareValidator ID="cvSifreTekrar" runat="server" ControlToValidate="txtSifreOnay" ControlToCompare="txtSifre" ErrorMessage="Şifreler aynı olmalıdır." Text="*" ForeColor="Red"></asp:CompareValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                  <div class="register-top-grid">
                    <h3>Adres Bilgileri</h3>
                    <div>
                        <span>Email :</span>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email adresini girmelisiniz!!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>Telefon:</span>
                        <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTelefon" runat="server" ControlToValidate="txtTelefon" ErrorMessage="Telefon numarasını girmelisiniz!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>Adres :</span>
                        <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdres" runat="server" ControlToValidate="txtAdres" ErrorMessage="Adres bilginizi Boş Bırakamazsınız!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>İl :</span>
                        <asp:TextBox ID="txtIl" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <span>İlçe :</span>
                        <asp:TextBox ID="txtIlce" runat="server"></asp:TextBox>
                    </div>
                    <div class="clear"></div>
             
 
            </div>
               
                  <div class="button1"><asp:Button ID="btnUyeOl" runat="server" Text="UyeOl" OnClick="btnUyeOl_Click" /></div>
                 <div class="col-md-12">
                    <asp:Label ID="lblMesaj" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                 <div class="row">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary2" ForeColor="red" runat="server" />
                </div>
            </div>
           
           
            
            </div>
        </div>
    
            </div>
 
</asp:Content>
