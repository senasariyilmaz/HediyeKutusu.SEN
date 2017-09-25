<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="CreditCard.aspx.cs" Inherits="SEN.Presentation.CreditCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main">
        <div class="shop_top">
            <div class="container">
                <asp:Panel ID="PanelKart" runat="server">
                <div class="register-top-grid">
                    <h3>Kart Bilgileri</h3>
                    <div>
                        <span>Kart Sahibinin Adı :</span>
                        <asp:TextBox ID="txtKrediKartıAd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtKrediKartıAd" ErrorMessage="Kart sahibinin adını girmelisiniz!!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>Kart Numarası:</span>
                        <asp:TextBox ID="txtkn1" runat="server"  MaxLength="4"  Width="75px" ></asp:TextBox> - 
                        <asp:TextBox ID="txtkn2" runat="server"  MaxLength="4"  Width="75px" ></asp:TextBox> - 
                        <asp:TextBox ID="txtkn3" runat="server" MaxLength="4"  Width="75px" ></asp:TextBox> - 
                        <asp:TextBox ID="txtkn4" runat="server" MaxLength="4"  Width="75px" ></asp:TextBox>  
                        
                        <asp:RequiredFieldValidator ID="rfvTelefon" runat="server" ControlToValidate="txtkn4" ErrorMessage="Kart numarasını girmelisiniz!" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <span>3 Haneli Güvenlik Kodu :</span>
                        <asp:TextBox ID="txtGuvenlik" runat="server" MaxLength="3" Width="75px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAdres" runat="server" ControlToValidate="txtGuvenlik" ErrorMessage="Kartınızın arka yüzündeki üç haneli güvenlik kodunu giriniz !" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="clear"></div>
                    <div class="button1">
                        <asp:Button ID="btnKaydet" CssClass="btn btn-default text-center" runat="server" Text="ALIŞ VERİŞİ TAMAMLA" OnClick="btnKaydet_Click"  /></div>
                   
                </div>

                </asp:Panel>
                 <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblKartMesaj" runat="server" Text="" ForeColor="Red"></asp:Label>
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
