<%@ Page Title="" Language="C#" MasterPageFile="~/ProfilePage.Master" AutoEventWireup="true" CodeBehind="EventStatus.aspx.cs" Inherits="FinalProj.EventStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="EventStatus.css" />
    <script>
        function searchFunction() {
          // Declare variables
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("searchEventName");
          filter = input.value.toUpperCase();
          table = document.getElementById("myTable");
          tr = table.getElementsByTagName("tr");

          // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
                td = tr[i].querySelector("td > h3");
            if (td) {
              txtValue = td.textContent || td.innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
              } else {
                tr[i].style.display = "none";
              }
            }
          }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="height:300vh">    
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
                        <input type="search" onkeyup="searchFunction()" id="searchEventName" placeholder="Search for events" aria-describedby="button-addon1" class="form-control border-1 bg-light"/>
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

            <table class="center" id="myTable">
                <% foreach (var element in evStList)
                    { %>
                    <tr>
                        <td>
                            <img id="eventdp"  src="<%= element.Pic %>"/>
                        </td>
                        <td id="tableTD">
                            <h3 class="title"><%= element.Title %><br /></h3>
                            <img id="dp" src="picture.jpg" />
                            <p id="organiser">Organised by: Kovi Tan</p>
                            <p id="txtDate">Start date and time: </p>
                            <p id="dateTime"> <%= element.Date %>, <%= element.StartTime %> to <%= element.EndTime %></p>
                            <p id="txtStatus">Status: </p>
                            <p id="status">Complete</p>
                        </td>
                    </tr>
                    <% } %>
            </table>

        </form>
    </div>
</asp:Content>