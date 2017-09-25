<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucGiftBox.ascx.cs" Inherits="SEN.Presentation.ucGiftBox" %>

<div class="section clearfix">
    <div class="col-md-12">
        <div class="row ">
            <div class="row shop_box-top">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:DataList ID="dlstKutuUrunler" runat="server" DataKeyField="urunid" RepeatColumns="4" OnItemCommand="dlstKutuUrunler_ItemCommand">
                    <ItemTemplate>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="col-md-12 top_box">
                                    <a href="ProductDetail.aspx">
                                        <img src='<%#Eval("urunresimyolu1")%>' class="img-responsive" alt="" /></a>
                                    <div class="shop_desc">
                                        <asp:Label ID="lblUrunAd" runat="server" Text='<%#Eval("urunad") %>'></asp:Label></h3><br /><br />
                                        <span class="actual">
                                            <asp:Label CssClass="price" ID="lblFiyat" runat="server" Text='<%#Eval("urunfiyat","{0:C}") %>'></asp:Label></span><br>
                                        <asp:TextBox CssClass="pul-right" ID="txtMiktar" runat="server" TextMode="Number" Min="1" Max='<%#Eval("miktar") %> ' Text="1"></asp:TextBox>
                                        <ul class="buttons">
                                            <li class="cart"><a href="#">
                                                <asp:ImageButton ID="imgKutu" runat="server" ImageUrl="/Content/images/giftbox.png" Height="25px" Width="25px" CommandName="kutu" CommandArgument='<%#Eval("urunid") %>' /></a></li>
                                            <li class="shop_btn"><a href="/ProductDetail.aspx?id=<%#Eval("urunid") %>">Detay</a></li>
                                            <div class="clear"></div>
                                        </ul>
                                    </div>
                                    <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</div>
