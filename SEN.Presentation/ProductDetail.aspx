<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="SEN.Presentation.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="main">
        <div class="shop_top">
            <div class="container">
                <div class="row">
                    <asp:DataList ID="dlstProducts" runat="server" OnItemCommand="dlstProducts_ItemCommand" >
                        <ItemTemplate>
                            <div class="col-md-9 single_left">
                            
                                <div class="col-md-6 single_left">
                            <div id="myCarousel" class="carousel slide">
                                <!-- Indicators -->
                               

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">

                                     <div class="item active">

                                                <a href="/ProductDetail.aspx?id=<%#Eval("urunid") %>" title='<%#Eval("urunad") %>'>
                                                    <img src='<%#Eval("urunresimyolu2")%>' alt="" width="690" height="690" />
                                                </a>
                                            </div>

                                            <div class="item">
                                                <img src='<%#Eval("urunresimyolu3")%>' alt="" width="460" height="345">
                                            </div>

                                            <div class="item">
                                                <img src='<%#Eval("urunresimyolu4")%>' alt="" width="460" height="345" />
                                            </div>

                                        </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel" role="button">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>

                            <script>
                                $(document).ready(function () {
                                    // Activate Carousel
                                    $("#myCarousel").carousel();

                                    // Enable Carousel Indicators
                                    $(".item1").click(function () {
                                        $("#myCarousel").carousel(0);
                                    });
                                    $(".item2").click(function () {
                                        $("#myCarousel").carousel(1);
                                    });
                                    $(".item3").click(function () {
                                        $("#myCarousel").carousel(2);
                                    });


                                    // Enable Carousel Controls
                                    $(".left").click(function () {
                                        $("#myCarousel").carousel("prev");
                                    });
                                    $(".right").click(function () {
                                        $("#myCarousel").carousel("next");
                                    });
                                });
                            </script>
                                    </div>
                             <div class="col-md-6">
                            <div class="single_right">
                                <div class="desc">
                                    <h3>
                                        <span>
                                            <asp:Label ID="lblUrunAd" runat="server" Text='<%#Eval("urunad") %>'></asp:Label>            
                                    </h3>
                                    <p class="m_10">
                                        <asp:Label ID="lblIcerik" runat="server" Text='<%#Eval("urunbilgisi") %>'></asp:Label>
                                    </p>
                                    </span>
                                </div></div></div>
                                <div class="clearfix"></div>
                        </div>
                            <div class="col-md-3">
                                <div class="box-info-product">
                                    <p class="price2">
                                        <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("urunfiyat","{0:C}") %>'></asp:Label>
                                    </p>
                                    <ul class="prosuct-qty">
                                     <span>Miktar:  </span>
                                            <asp:TextBox CssClass="pul-right" ID="txtAdet" runat="server" TextMode="Number" Min="1" Max='<%#Eval("miktar")%> ' Text="1"></asp:TextBox>
                                       
                                    </ul>
                               <asp:ImageButton ID="btnSepeteEkle" runat="server" ImageUrl="Content/images/send.png" CommandName="sepet" CommandArgument='<%#Eval("urunid") %>' />
                                                <h4>Sepete Ekle</h4>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
