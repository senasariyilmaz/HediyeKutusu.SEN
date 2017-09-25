<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="GiftBox.aspx.cs" Inherits="SEN.Presentation.GiftBox" %>

<%@ Register Src="~/ucGiftBox.ascx" TagPrefix="uc1" TagName="ucGiftBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-3">
        <h3>Kategoriler</h3>
        <asp:Menu ID="mnuKategoriler" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#7C6F57" StaticSubMenuIndent="10px" OnMenuItemClick="mnuKategoriler_MenuItemClick">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <h3>Benim Kutum</h3>
        <div>
            <asp:Image ID="imgkuturesim" runat="server" ImageUrl="/Content/images/paketkurdele.png" Height="100px" Width="205px" />
        </div>
        <div>
            <asp:Panel ID="pnlKutu" runat="server" Style="margin-right: 1091px">
                <asp:Repeater ID="repKutu" runat="server" OnItemCommand="repKutu_ItemCommand">
                    <ItemTemplate>
                        <tr class="remove-data">
                            <td class="remove">

                                <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="/Content/images/close_edit.png" Height="10px" Width="10px" CommandName="delete" CommandArgument='<%#Eval("urunid") %>' /></td>
                            <td>
                                <span class="img-responsive">
                                    <asp:Image ID="imgUrunyolu1" runat="server" Height="150px" Width="200px" src='<%#Eval("urunresimyolu1")%>' alt="" /></span></td>
                            <td class="price"><%#Eval("fiyat") %></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<td class="quantity"><%#Eval("adet") %>Adet</td>
                        </tr>

                        <br />
                    </ItemTemplate>
                    <FooterTemplate>
                        <ul class="buttons">
                            <li class="cart"><a href="#">
                                <asp:Button ID="btnKutuGonder" runat="server" Text="Sepete Gönder" CommandName="kutugonder" CommandArgument='<%#Eval("urunid") %>' BorderStyle="None" BorderColor="#FFCCCC" BackColor="White" /></li>
                        </ul>
                       
                    </FooterTemplate>

                </asp:Repeater>
            </asp:Panel>
        </div>

    </div>
    <div></div>

    <div class=" col-md-9">
        <uc1:ucGiftBox runat="server" ID="ucGiftBox" />

    </div>
</asp:Content>
