<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="VoucherRedemption.aspx.cs" Inherits="FinalProj.VoucherRedemption" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Voucher.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 86vh">
        <form id="form1" runat="server">
            <h2 id="title">Voucher Redemption</h2>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <img id="coupon" src="grabVoucher.JPG" />
                    </div>
                    <div  class="col-sm-12 col-md-12 col-lg-6">
                        <div id="box" class="col-sm-12 col-md-12 col-lg-12">
                            <h3>Points required to redeem:</h3>
                            <h3 id="points">30</h3>
                            <a href="/PPPoints.aspx" id="btnRedeem" class="btn btn-danger">Redeem</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>