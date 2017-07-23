﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="padding-top: 20px;">
        <div class="col-md-9">
            <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5>

            <asp:Repeater ID="rptrCartProducts" runat="server">
                <ItemTemplate>
                    <div class="media" style="border: 1px solid #eaeaec;">
                        <div class="media-left">
                            <a href="ProductView.aspx?PID=<%#Eval("Pid") %>" target="_blank">
                               <asp:Image ID="Image1" CssClass="bilder" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "P1")%>' runat="server" />
  
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                            <p class="proPriceDiscountView">Size : <%#Eval("SizeName") %></p>
                            <span class="proPriceView"><%#Eval("PSellPrice","{0:c}") %></span>
                            <span class="proOgPriceView"><%#Eval("PPrice","{0:0,00}") %></span>
                            <p>
                                <asp:Button CommandArgument='<%#Eval("Pid")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="removeButton" runat="server" Text="REMOVE" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-3" runat="server" id="divPriceDetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div>
                    <label>Cart Total</label>
                    <span class="pull-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
                <div>
                    <label>Cart Discount</label>
                    <span class="pull-right priceGreen" id="spanDiscount" runat="server"></span>
                </div>
            </div>
            <div>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="pull-right" id="spanTotal" runat="server"></span>
                </div>
                <div>
                    <asp:Button ID="btnBuyNow"  CssClass="buyNowBtn" runat="server" Text="BUY NOW" OnClick="btnBuyNow_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

