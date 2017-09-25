<%@ Page Title="" Language="C#" MasterPageFile="~/SEN.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="SEN.Presentation.Shop" %>

<%@ Register Src="~/ucProduct.ascx" TagPrefix="uc1" TagName="ucProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
	
					
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="col-md-3">
      <h3>Kategoriler</h3>
 <asp:Menu ID="mnuKategoriler" runat="server" StaticSubMenuIndent="20px"  OnMenuItemClick="mnuKategoriler_MenuItemClick" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.99em" ForeColor="#7C6F57">
                                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <DynamicMenuStyle BackColor="#F7F6F3" />
                                <DynamicSelectedStyle BackColor="#5D7B9D" />
                                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                <StaticSelectedStyle BackColor="#5D7B9D" />
                            </asp:Menu>
						</div>
          <div class=" col-md-9">

              <uc1:ucProduct runat="server" ID="ucProduct1" />
              </div>

</asp:Content>
