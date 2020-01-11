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
    <div style="min-height:90vh;" >
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

            <form class="mb-3">
                <div class="form-group">
                    <label for="prefix">Prefix:</label>
                    <select class="form-control">
                        <option>[Discussion]</option>
                        <option>[Info]</option>
                        <option>[News]</option>
                        <option>[Help]</option>
                        <option>[Request]</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="thread">Title</label>
                    <input type="text" class="form-control" id="thread" placeholder="What's your title?" required />
                </div>
                <img id='img-upload' />
                <div class="form-group">
                    <label>Upload Image</label>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <span class="btn btn-default btn-file">Browse…
                                <input type="file" id="imgInp">
                            </span>
                        </span>
                        <input type="text" class="form-control" readonly>
                    </div>
                </div>

                <div class="form-group">
                    <label for="comment">Content:</label>
                    <textarea class="form-control" id="comment" rows="10" placeholder="Write more about the event..." required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </form>
        </div>
    </div>

    <h1>hello git kraken</h1>

</asp:Content>
