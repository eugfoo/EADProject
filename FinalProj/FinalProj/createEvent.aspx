<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="createEvent.aspx.cs" Inherits="FinalProj.Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('Img/table.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
		\
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
        <p class="h1" id="createEventTitle">CREATE YOUR EVENT</p>
    </div>
    <form>
        <div class="container" id="formContainer">
            <div class="card">
                <div class="card-body">
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Fill in the Details of the Event*</div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="title">Title:</label>
                            <input type="text" class="form-control" id="title" placeholder="Project Free Cycle">
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Venue:</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Date:</label>
                            <input type="date" class="form-control" id="inputCity">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="startTime">Start Time:</label>
                            <input type="text" class="form-control" id="startTime">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="endTime">End Time:</label>
                            <input type="text" class="form-control" id="endTime">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="maxAttend">Max Number of Attendees:</label>
                        <input type="number" class="form-control" id="maxAttend" placeholder="20">
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Write a summary of your Event*</div>
                    <div class="form-group">
                        <label for="desc">Description:</label>
                        <textarea class="form-control" rows="5" id="desc"></textarea>
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Add a Photo*</div>

                    <div class="input-group" style="margin:2em auto;">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="inputGroupFile01"
                                aria-describedby="inputGroupFileAddon01">
                            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                        </div>
                    </div>
                    <div class="card-title" style="background-color: #22537C; font-family: 'Franklin Gothic'; padding: 1%; color: white; font-size: 1em;">&nbsp;Include a Short Note</div>
                    <label for="noteText">Note:</label>
                    <input type="text" class="form-control" id="noteText">
                    <div class="form-group" style="margin-top:2em;">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                                Post this on our Instagram
                            </label>
                        </div>
                    </div>
                    <a href="/createdEvent.aspx"><button type="button" class="btn btn-primary">CREATE</button></a>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
