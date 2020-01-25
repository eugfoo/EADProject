<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="FinalProj.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-5" style="">
        <div style="width: 500px; margin: auto; margin-top: 5rem;" class="card">
            <div class="card-header text-center">
                Edit Profile
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="formGroupExampleInput">Background Picture</label>
                    <asp:RequiredFieldValidator CssClass="vError" ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbEmail" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox type="email" CssClass="form-control" ID="tbEmail" runat="server" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput">Display Picture</label>
                    <asp:RequiredFieldValidator CssClass="vError" ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbName" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox type="text" CssClass="form-control" ID="tbName" runat="server" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Name</label>
                    <asp:RequiredFieldValidator CssClass="vError" ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPass" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox type="password" CssClass="form-control" ID="tbPass" runat="server" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Description</label>
                    <asp:RequiredFieldValidator CssClass="vError" ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbCfmPass" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox type="password" CssClass="form-control" ID="tbCfmPass" runat="server" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Connect your Social Media</label>
                    <asp:RequiredFieldValidator CssClass="vError" ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbCfmPass" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox type="password" CssClass="form-control" ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
                </div>
                <div class="dropdown-divider"></div>
                <div class="form-group">
                    <label>Dietary Requirements:</label>
                    <asp:DropDownList ID="ddlDiet" runat="server">
                        <asp:ListItem Selected="True" Value="none">None</asp:ListItem>
                        <asp:ListItem Value="halal">Halal</asp:ListItem>
                        <asp:ListItem Value="vegetarian">Vegatarian</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">If your option is not in the list, please specify:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="align-bottom" style="text-align: right;">
                    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
