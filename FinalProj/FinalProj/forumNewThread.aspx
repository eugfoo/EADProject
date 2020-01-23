<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="forumNewThread.aspx.cs" Inherits="FinalProj.forumNewThread" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(document).ready(function () {
            $(document).on('change', '.btn-file :file', function () {
                var input = $(this),
                    label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
                input.trigger('fileselect', [label]);
            });

            $('.btn-file :file').on('fileselect', function (event, label) {

                var input = $(this).parents('.input-group').find(':text'),
                    log = label;

                if (input.length) {
                    input.val(log);
                } else {
                    if (log) alert(log);
                }

            });
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#img-upload').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#imgInp").change(function () {
                readURL(this);
            });
        });
    </script>

    <style>
        .btn-file {
            position: relative;
            overflow: hidden;
        }

            .btn-file input[type=file] {
                position: absolute;
                top: 0;
                right: 0;
                min-width: 100%;
                min-height: 100%;
                font-size: 100px;
                text-align: right;
                filter: alpha(opacity=0);
                opacity: 0;
                outline: none;
                background: white;
                cursor: inherit;
                display: block;
            }

        #img-upload {
            width: 100%;
        }
    </style>
    <div style="min-height: 90vh;">
        <div class="container my-3">
            <nav class="breadcrumb">
                <a href="forumPage1.aspx" class="breadcrumb-item">Board index</a>
                <a href="forumCatOverview.aspx" class="breadcrumb-item">Forum Category</a>
                <span class="breadcrumb-item active">Create New Thread</span>
            </nav>
            <div class="row">
                <div class="col-12">
                    <div class="container">
                        <div class="row text-white bg-info mb-3 p-4 rounded">
                            <div class="col-md-9">
                                <h2 class="h4">Create New Thread</h2>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

                <div class="form-group">
                    <label for="prefix">Prefix:</label>
                    <asp:DropDownList ID="DdlPrefix" runat="server" CssClass="form-control">
                        <asp:ListItem>-- Select --</asp:ListItem>
                        <asp:ListItem>[Discussion]</asp:ListItem>
                        <asp:ListItem>[Info]</asp:ListItem>
                        <asp:ListItem>[News]</asp:ListItem>
                        <asp:ListItem>[Help]</asp:ListItem>
                        <asp:ListItem>[Request]</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="thread">Title</label>
                    <asp:TextBox ID="tbTitle" runat="server" CssClass="form-control"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Upload Image :</label>

                    <asp:FileUpload ID="FileImgSave" runat="server" onchange="ShowPreview(this)" />
                    <asp:Image ID="image_upload_preview" runat="server" src="http://placehold.it/100x100" Style="height: 200px; width: 200px;" />
                </div>

                <div class="form-group">
                    <label for="comment">Content:</label>
                    <asp:TextBox ID="tbContent" runat="server" CssClass="form-control" Height="250px" TextMode="MultiLine"></asp:TextBox>
                    <asp:HiddenField ID="HFDate" runat="server" />
                    <asp:HiddenField ID="HFthreadId" runat="server" />

                    <br />
                    <%--<textarea class="form-control" id="comment" rows="10" placeholder="Write more about the event..." required></textarea>--%>
                    <asp:Label ID="LblMsg" runat="server"></asp:Label>
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />

                <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
                <button type="reset" class="btn btn-danger">Reset</button>
        </div>
    </div>

</asp:Content>
