<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="SEN.Presentation.Address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="shop_top">
            <div class="container">

                <div class="register-top-grid">
                    <h3>Adres Bilgileri</h3>
                    <div>
                        <span>Email :</span>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email adresini girmelisiniz!!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>Telefon</span>
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
                    <div class="button1">
                        <asp:Button ID="btnKaydet" CssClass="btn btn-default text-center" runat="server" Text="KAYDET" OnClick="btnKaydet_Click" /></div>
                   


                </div>
                 <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblAdresMesaj" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>
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
