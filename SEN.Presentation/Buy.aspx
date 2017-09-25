<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="SEN.Presentation.Buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="shop_top">
            <div class="container">
                <div class="col-md-6">
                    <div class="login-page">
                        <h4 class="title">Üye ol</h4>
                        <p>Her ay indirimdeki ürünlerimiz hakkında mail yoluyla bilgilendirileceksiniz. Üye olmanız durumunda 200           
                            TL üzerinde yaptığınız her alışverişte 10TL'lık hediye çeki kazanacaksınız. Üstelik 100TL üstü tüm alış-verişlere kargo bedava!</p>
                        <div class="button1">
                           
                                
                        <asp:Button ID="btnUyeOl" runat="server" Text="Üye Ol" OnClick="btnUyeOl_Click1" />
                        
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="login-title">
                        <h4 class="title">Üye Girişi</h4>
                        <div id="loginbox" class="loginbox">
                         
                                <fieldset class="input">
                                    <p id="login-form-username">
                                        <label for="modlgn_username">Email</label>
                                     
                                        <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" size="18"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="eMail adresi boş geçilmemelidir." ControlToValidate="txtEmail" Text="*" ForeColor="Red" ValidationGroup="btnGiris"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="email uygun formatta değil!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ForeColor="Red"></asp:RegularExpressionValidator>
                                    </p>
                                    <p id="login-form-password">
                                        <label for="modlgn_passwd">Şifre</label>
                                     
                                        <asp:TextBox CssClass="form-control" ID="txtSifre" runat="server" TextMode="Password" size="18"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvSifre" runat="server" ErrorMessage="şifre boş geçilmemelidir." ControlToValidate="txtSifre" Text="*" ForeColor="Red" ValidationGroup="btnGiris"></asp:RequiredFieldValidator>
                                    </p>
                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <asp:Label ID="lblMesaj" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="red" runat="server" />
                                        </div>
                                    </div>
                                    <div class="remember">
                                        <p id="login-form-remember">
                                             <asp:CheckBox ID="cbxUnuttum" Text="Şifremi Unuttum!" runat="server" OnCheckedChanged="cbxUnuttum_CheckedChanged" />
                                        </p>
                                     
                                        
                                        <asp:Button ID="btnGiris" CssClass="btn btn-default text-center" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
                                    </div><div class="clear">
                                        </div>
                                </fieldset>
                        
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>