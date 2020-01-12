<%@ Page Title="" Language="C#" MasterPageFile="~/ProfilePage.Master" AutoEventWireup="true" CodeBehind="EventStatus.aspx.cs" Inherits="FinalProj.EventStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="EventStatus.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="height:87vh">    
        <form id="form1" runat="server">
            <div>
                <h2 id="title">Events Status</h2>
            </div>
            <table id="totalStats">
                <tr>
                    <td>Total Events Participated:</td>
                    <td id="totalParticipate">1</td>
                </tr>
                <tr>
                    <td>Total Events Completed:</td>
                    <td id="totalComplete">1</td>
                </tr>
                <tr>
                    <td>Total Events Created:</td>
                    <td id="totalCreate">0</td>
                </tr>
            </table>

            <div class="container">
                <div class="row" id="row2">
                    <div class="col-sm-6 col-md-3 col-lg-3">
                        <asp:TextBox ID="tbEventName" runat="server" Width="180px" placeholder="Search for event"></asp:TextBox>
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3">
                        <asp:CheckBox ID="chkCreate" runat="server" Text="Show events created" />
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3">
                        <asp:CheckBox ID="chkParticipate" runat="server" Text="Show events participated" />                    
                    </div>
                    <div class="col-sm-6 col-md-3 col-lg-3">
                        <asp:DropDownList ID="ddlAlphabet" runat="server">
                            <asp:ListItem>A-Z</asp:ListItem>
                            <asp:ListItem>Z-A</asp:ListItem>
                        </asp:DropDownList>
                        Sort Alphabetically
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row" class="row1">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <img class="eventdp" src="beach.jpg" />
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <h3>Project Clean the Beach</h3>
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <img id="dp" src="picture.jpg" />
                            <p class="organiser">Organised by: Kovi Tan</p>
                            <p class="txtDate">Start date and time: </p>
                            <p class="dateTime">25/10/2019 0800-1300</p>
                            <p class="txtStatus">Status: </p>
                            <p class="status">Complete</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row1">
                    <% foreach (var element in evStList)
                        { %>

                        <div class="col-sm-12 col-md-12 col-lg-6">
                            <img class="eventdp" src="beach.jpg" />
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-6">
                            <h3>Project Clean the Beach</h3>
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <img id="dp" src="picture.jpg" />
                                <p class="organiser">Organised by: Kovi Tan</p>
                                <p class="txtDate">Start date and time: </p>
                                <p class="dateTime">25/10/2019 0800-1300</p>
                                <p class="txtStatus">Status: </p>
                                <p class="status">Complete</p>
                            </div>
                        </div>
                       <% }
                            %>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <img class="eventdp" src="beach.jpg" />
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <h3>Project Clean the Beach</h3>
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <img id="dp" src="picture.jpg" />
                            <p class="organiser">Organised by: Kovi Tan</p>
                            <p class="txtDate">Start date and time: </p>
                            <p class="dateTime">25/10/2019 0800-1300</p>
                            <p class="txtStatus">Status: </p>
                            <p class="status">Complete</p>
                        </div>
                    </div>
                </div>
            </div>


            <asp:ListView ID="ListView1" runat="server">
            </asp:ListView>
        </form>
    </div>
</asp:Content>
