<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="AttendanceEdit.aspx.cs" Inherits="FinalProj.AttendanceEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="AttendanceEdit.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:86vh">
        <form id="form1" runat="server">
        <div>
            <div><h2 id="title">Project Clean The Beach Attendance (Edit)</h2></div>
            <table id="timer">
                <tr>
                    <td id="attendTitle">Time left to edit attendance:</td>
                    <td id="attendTime">0 hours 32 minutes 3 seconds</td>
                </tr>
                <tr id="timerRow">
                    <td class="greenBar"></td>
                    <td class="emptyBar"></td>
                </tr>
            </table>

            <table id="attendance">
                <tr>
                    <th>Names</th>
                    <th>Dietary Requirements (If any)</th>
                    <th>Are they at your event?</th>
                </tr>
                <tr>
                    <td>Kovi Tan</td>
                    <td>Halal</td>
                    <td>
                        <asp:CheckBox ID="chkAttendance" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Eugene Lee</td>
                    <td>Nil</td>
                    <td>
                        <asp:CheckBox ID="chkAttendance1" runat="server" Checked="True" />
                    </td>
                </tr>
            </table>

            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <p id="totalPart">Total Participants: </p>
                        <p id="totalPartNum">2</p>
                        <p id="currentPart">Current Participants: </p>
                        <p id="currentPartNum">1</p>
                    </div>
                </div>
            </div>

            <a href="/AttendanceSubmitted.aspx" id="btnSubmit" class="btn btn-warning">Submit</a>
        </div>

    </form>
        
    </div>
</asp:Content>
