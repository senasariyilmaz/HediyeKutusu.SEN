<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="SEN.Presentation.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-intro">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home pr-10"></i><a href="Default.aspx">Anasayfa</a></li>
                        <li class="active">Alışveriş Sepeti</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <section class="main-container">
        <div class="shop_top">
            <div class="container">

                <div class="cart">
                    <div class="row">

                        <!-- main start -->
                        <!-- ================ -->
                        <div class="main col-md-12">

                            <!-- page-title start -->
                            <!-- ================ -->
                            <h3 class="page-title margin-top-clear">Alışveriş Sepeti</h3>
                            <!-- page-title end -->
                        </div>

                        <div class="col-md-12">
                            <div class="space"></div>
                            <table class="table cart table-hover table-striped">
                                <asp:Repeater ID="repShoppingCart" runat="server" OnItemCommand="repShoppingCart_ItemCommand">
                                    <HeaderTemplate>
                                        <thead>
                                            <tr>
                                                <th>Ürün</th>
                                                <th>Ürün Adı </th>
                                                <th>Fiyat </th>
                                                <th>Adet</th>
                                                <th>Sil </th>
                                                <th class="amount">Toplam </th>
                                            </tr>
                                        </thead>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr class="remove-data">
                                            <td>
                                    <span class="img-responsive"><asp:Image ID="imgUrunyolu1" runat="server" src='<%#Eval("urunresimyolu1")%>' alt="" /></span></td>
                                    

                                            <td class="product"><a href="UrunDetay.aspx?id=<%#Eval("urunid") %>"><%#Eval("urunad") %></a> <small><%#Eval("urunad") %></small></td>
                                            <td class="price"><%#Eval("fiyat") %></td>
                                            <td class="quantity"><%#Eval("adet") %></td>
                                            <td class="remove">

                                                <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="/Content/images/delete.png" Height="30px" Width="30px" CommandName="delete" CommandArgument='<%#Eval("urunid") %>' /></td>
                                            <td class="amount"><%#Eval("tutar") %></td>

                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <tr>
                                            <td class="total-quantity" colspan="5">Toplam Adet :<%if (Session["toplamadet"] != null)
               { %><%=Session["toplamadet"].ToString()%><% }%></td>
                                            <td class="total-amount"><%if (Session["toplamtutar"] != null)
               { %><%=Session["toplamtutar"].ToString()%><% }%><i class="fa fa-try" aria-hidden="true"></i></td>
                                        </tr>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </table>

                            <div class="text-right left">
                                <asp:Button ID="btnTemizle" class="btn btn-group btn-default btn-sm" runat="server" Text="Sepeti Temizle" OnClick="btnTemizle_Click" />
                                <a href="Shop.aspx" class="btn btn-group btn-default btn-sm">Alışverişe Devam</a>
                                <a href="Buy.aspx" class="btn btn-group btn-default btn-sm">Satın Al</a>
                            </div>


                        </div>
                        <!-- main end -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
