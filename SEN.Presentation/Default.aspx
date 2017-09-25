<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SEN.Presentation.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <!-- start slider -->
        <div id="fwslider">
            <div class="slider_container">
                <div class="slide">
                    <!-- Slide image -->
                    <img src="Content/images/tatil-banner.jpg" class="img-responsive" alt="" />
                    <!-- /Slide image -->

                    <div class="slide_content">
                        <div class="slide_content_wrap">
                            <!-- Text title -->
                            <h1 class="title">Kutunu oluşturmak için</h1>
                            <div class="button"><a href="GiftBox.aspx">Tıkla</a></div>
                        </div>
                    </div>
                    <!-- Texts container -->
                </div>
                <!-- /Duplicate to create more slides -->
                <div class="slide">
                    <img src="Content/images/Harita.jpg" class="img-responsive" alt="" />
                    <div class="slide_content">
                        <div class="slide_content_wrap">
                           
                        </div>
                    </div>
                </div>
                <!--/slide -->
            </div>
            <div class="timers"></div>
            <div class="slidePrev"><span></span></div>
            <div class="slideNext"><span></span></div>
        </div>
        <!--/slider -->
    </div>

    <div class="features">
        <div class="container">
            <div class ="col-md-1"></div>
            <div class ="col-md-11">
            <h3 class="m_3">Sizin için seçtiklerimiz</h3>
            <div class="row shop_box-top">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <asp:DataList ID="dlstSectiklerimiz" runat="server" DataKeyField="urunid" RepeatColumns="4" OnItemCommand="dlstSectiklerimiz_ItemCommand">

                    <ItemTemplate>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="col-md-12 top_box">
                                    <a href="ProductDetail.aspx">
                                        <img src='<%#Eval("urunresimyolu1")%>' class="img-responsive" alt="" />
                                    </a>
                                    <div class="shop_desc">
                                        <asp:Label ID="lblUrunAd" runat="server" Text='<%#Eval("urunad") %>'></asp:Label></h3><br />
                                        <span class="actual">
                                            <asp:Label CssClass="price" ID="lblFiyat" runat="server" Text='<%#Eval("urunfiyat","{0:C}") %>'></asp:Label></span><br>
                                        <asp:TextBox CssClass="pul-right" ID="txtMiktar" runat="server" TextMode="Number" Min="1" Max='<%#Eval("miktar") %> ' Text="1"></asp:TextBox>
                                        <ul class="buttons">
                                            <li class="cart"><a href="#"></a></li>
                                            <li class="cart"><a href="#">
                                                <asp:Button CssClass="cart" ID="btnSepeteEkle" runat="server" CommandName="sepet" Text="Sepete Ekle" CommandArgument='<%#Eval("urunid") %>' BackColor="White" BorderStyle="None" Font-Size="Small" /></a></li>
                                            <li class="shop_btn"><a href="/ProductDetail.aspx?id=<%#Eval("urunid") %>">Detay</a></li>
                                            <div class="clear"></div>
                                        </ul>
                                    </div>
                                    <br />

                                </div>

                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </ItemTemplate>


                </asp:DataList>


            </div>
            </div>


        </div>
    </div>


</asp:Content>
