﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="forumPost.aspx.cs" Inherits="FinalProj.forumPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .author-col {
            min-width: 12em;
        }

        .post-col {
            min-width: 20em;
        }

        .auto-style1 {
            max-width: 100%;
            height: 245px;
            width: 213px;
        }

        .auto-style3 {
            width: 233px;
        }

        .auto-style4 {
            min-width: 12em;
            width: 233px;
        }
    </style>
    <div class="container my-3">
        <nav class="breadcrumb">
            <a href="forumPage1.aspx" class="breadcrumb-item">Board index</a>
            <a href="forumCatOverview.aspx" class="breadcrumb-item">Forum Category</a>
            <span class="breadcrumb-item active">
                <asp:Label ID="LblPrefix" runat="server"></asp:Label>
                <asp:Label ID="LblTitleBreadcrumb" runat="server"></asp:Label></span>
        </nav>
        <div class="row">
            <div class="col-12">

                <div class="container">
                    <div class="row text-white bg-info mb-0 p-4 rounded-top">
                        <div class="col-md-9">
                            <h2 class="h4">
                                <asp:Label ID="LblTitleBig" runat="server"></asp:Label></h2>
                        </div>

                    </div>
                </div>
                <table class="table table-striped table-bordered table-responsive-lg">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col" class="auto-style3"></th>
                            <th scope="col"></th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="auto-style4 threadBox">
                                <div><a href="#0"><strong>GandyHaley</strong></a></div>
                            </td>
                            <td class="post-col d-lg-flex justify-content-lg-between threadBox">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <span class="font-weight-bold">Post subject:</span>
                                            <asp:Label ID="LblTitle" runat="server"></asp:Label>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="font-weight-bold">Posted:</span>
                                            <asp:Label ID="LblPostDate" runat="server" Text="02 Apr 2019"></asp:Label>

                                        </div>
                                    </div>
                                </div>

                                <div>
                                </div>
                                <div></div>
                            </td>
                        </tr>
                        <tr>
                            <td style="max-width: 100px;" class="auto-style3">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/1200px-Donald_Trump_official_portrait.jpg" class="auto-style1" />

                                <div><span class="font-weight-bold">Joined: </span>02 Apr 2019, 23:59</div>
                                <div><span class="font-weight-bold">Posts:</span>123</div>
                            </td>
                            <td>&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="289px" Width="489px" />
                                <br />
                                <asp:Label ID="LblContent" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <asp:Repeater ID="rptrComments" runat="server">

                    <HeaderTemplate>
                        <br>
                        <br />
                        <br />
                        <table class="table table-striped table-bordered table-responsive-lg">

                            <%--<thead class="thead-light">
                                <tr>
                                    <th scope="col" class="auto-style3"></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>--%>
                            <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td class="auto-style4">
                                <div><a href="#0"><strong>GandyHaley</strong></a></div>
                            </td>
                            <td class="post-col d-lg-flex justify-content-lg-between">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <span class="font-weight-bold">Post subject:</span>
                                            <asp:Label ID="LblTitle" runat="server"></asp:Label>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="font-weight-bold">Posted:</span>
                                            <asp:Label ID="LblPostDate" runat="server"><%# Eval("postDate") %></asp:Label>

                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="max-width: 100px;" class="auto-style3">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/1200px-Donald_Trump_official_portrait.jpg" class="auto-style1" />

                                <div><span class="font-weight-bold">Joined: </span>02 Apr 2019, 23:59</div>
                                <div><span class="font-weight-bold">Posts:</span>123</div>
                            </td>
                            <td>
                                <asp:Label ID="LblContent" runat="server"><%# Eval("postContent") %></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 30px;"></tr>
                    </ItemTemplate>



                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

                <style>
                    .threadBox {
                        background-color: #A9A9A9;
                    }
                </style>






            </div>
        </div>

        <div class="form-group">
            <label for="comment">Reply to this post:</label>
            <asp:TextBox ID="tbReplyContent" runat="server" CssClass="form-control" Height="250px" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkPage"
                        Style="padding: 8px; margin: 2px; background: lightgray; border: solid 1px #666; color: black; font-weight: bold"
                        CommandName="Page" CommandArgument="<%# Container.DataItem %>" runat="server" Font-Bold="True"><%# Container.DataItem %>  
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:Button ID="btnReply" runat="server" Text="Reply" CssClass="btn btn-primary" OnClick="btnReply_Click" />
        <button type="reset" class="btn btn-danger">Clear</button>


        <asp:HiddenField ID="HFthreadId" runat="server" />


        <asp:HiddenField ID="HFDate" runat="server" />


        <div class="mb-3 clearfix">
            <nav aria-label="Navigate post pages" class="float-lg-right">
                <ul class="pagination pagination-sm mb-lg-0">
                    <li class="page-item active"><a href="#0" class="page-link">1 <span class="sr-only">(current)</span></a></li>
                    <li class="page-item"><a href="#0" class="page-link">2</a></li>
                    <li class="page-item"><a href="#0" class="page-link">3</a></li>
                    <li class="page-item"><a href="#0" class="page-link">4</a></li>
                    <li class="page-item"><a href="#0" class="page-link">5</a></li>
                    <li class="page-item"><a href="#0" class="page-link">&hellip; 31</a></li>
                    <li class="page-item"><a href="#0" class="page-link">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>




</asp:Content>
