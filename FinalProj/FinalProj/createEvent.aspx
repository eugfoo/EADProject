<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="createEvent.aspx.cs" Inherits="FinalProj.Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('Img/table.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
		
            color: black;
            max-width: 100%;
            height: auto;
        }
        #createEventTitle{
            text-align: center; 
            padding: 0.5%; 
            width: 500px; 
            margin-left: auto; 
            color: white; 
            margin-right: auto; 
            margin-top: 1em; 
            background-color: #CB0000;
        }
		.stuff {
			width:1110px;
			height:auto;
			margin-left: auto;
			margin-right: auto;
			text-align:center;
    	}
		@media only screen and (max-width: 1199px){
          
    		.stuff {
				width:925px;
                height:auto;
    		}
    		
        }
		@media only screen and (max-width: 991px){
          
    		.stuff {
				width:690px;
                height:auto;
    		}
    		
        }
		@media only screen and (max-width: 767px){
          
    		.stuff {
				width:510px;
                height:auto;
    		}
    		
        }
        @media only screen and (max-width: 767px){
            #createEventTitle{
                font-size:2em;
                width:350px;
                height:auto;
            }
			
 
    		
        }

		

		
		
        #formContainer{
            margin-bottom:2em;
        }



    	

    	
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p class="h1"  id="createEventTitle">CREATE YOUR EVENT</p>
    </div>
	
	
	
    <form runat="server">
		<asp:Panel ID="PanelError" runat="server" Visible="false" CssClass="stuff alert alert-danger "><asp:Label ID="errmsgTb" runat="server"></asp:Label></asp:Panel>
        <div class="container" id="formContainer">
			
            <div class="card">
                <div class="card-body">
					
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Fill in the Details of the Event*</div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="eventTitle">Title:</label>
                            <asp:TextBox ID="eventTitle" CssClass="form-control" placeholder="Project Free Cycle" runat="server"></asp:TextBox>
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="eventAddress">Venue:</label>
                        <asp:TextBox ID="eventAddress" CssClass="form-control" placeholder="1234 Main St" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="eventDate">Date:</label>
							<asp:TextBox ID="eventDate" CssClass="form-control" runat="server" type="date" format="DD/MM/YYYY"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="startTime">Start Time:</label>
                            <asp:TextBox ID="startTime" CssClass="form-control" runat="server" min="07:00:00" max="22:00:00" type="time"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="endTime">End Time:</label>
                            <asp:TextBox ID="endTime" CssClass="form-control" runat="server"  min="07:00:00" max="22:00:00" type="time"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="maxAttend">Max Number of Attendees:</label>
						<asp:TextBox ID="maxAttend" CssClass="form-control" runat="server" Rows="5" placeholder="20" type="number"></asp:TextBox>
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Write a summary of your Event*</div>
                    <div class="form-group">
                        <label for="desc">Description:</label>
						<asp:TextBox ID="desc" CssClass="form-control" runat="server" Height="250" TextMode="MultiLine"></asp:TextBox>
                        
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Add a Photo*</div>

                    <div class="input-group" style="margin:2em auto;">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                        </div>
                        <div class="custom-file">
                            
							<asp:FileUpload ID="inputGroupFile01" aria-describedby="inputGroupFileAddon01" CssClass="custom-file-input" runat="server" />
                            <asp:Label ID="picChosen" runat="server" for="inputGroupFile01" CssClass="custom-file-label">Choose File</asp:Label>
                        </div>
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Include a Short Note</div>
                    <label for="noteText">Note:</label>
                    <asp:TextBox ID="noteText" CssClass="form-control" runat="server"></asp:TextBox>
                    <div class="form-group" style="margin-top:2em;">
                        <div class="form-check">
							<asp:CheckBox ID="advCheck" CssClass="form-check-input" runat="server" />
							<asp:Label AssociatedControlID="advCheck" runat="server">Post this on our Instagram</asp:Label>

                        </div>
                    </div>
					<asp:Button ID="createBtn" runat="server" CssClass="btn btn-primary" Text="Button" OnClick="createBtn_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
