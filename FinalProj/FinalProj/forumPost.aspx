<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="forumPost.aspx.cs" Inherits="FinalProj.forumPost" %>

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
            <span class="breadcrumb-item active"><asp:Label ID="LblPrefix" runat="server"></asp:Label>  <asp:Label ID="LblTitleBreadcrumb" runat="server"></asp:Label></span>
        </nav>
        <div class="row">
            <div class="col-12">
                <form id="form1" runat="server">
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
                                                <asp:Label ID="LblPostDate" runat="server" Text="02 Apr 2019, 13:33"></asp:Label>
                    
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
                                <td>
                                    <%--<p>
                                    "But I must explain to you how all this mistaken idea of denouncing pleasure
                                    and praising pain was born and I will give you a complete account of the system,
                                    and expound the actual teachings of the great explorer of the truth, the 
                                    master-builder of human happiness. No one rejects, dislikes, or avoids pleasure 
                                    itself, because it is pleasure, but because those who do not know how to pursue
                                    pleasure rationally encounter consequences that are extremely painful. Nor again
                                    is there anyone who loves or pursues or desires to obtain pain of itself, 
                                    <img src="https://i.ytimg.com/vi/oIzDvFWVFxI/maxresdefault.jpg" class="img-fluid" />
                                    because it is pain, but because occasionally circumstances occur in which toil
                                    and pain can procure him some great pleasure. To take a trivial example, which 
                                    of us ever undertakes laborious physical exercise, except to obtain some advantage
                                    from it? But who has any right to find fault with a man who chooses to enjoy a
                                    pleasure that has no annoying consequences, or one who avoids a pain that produces
                                    no resultant pleasure?"
                                </p>--%>&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="289px" Width="489px"/>
                                    <br />
                                    <asp:Label ID="LblContent" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>

                
            </div>
        </div>



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
        <form class="mb-3">
            <div class="form-group">
                <label for="comment">Reply to this post:</label>
                <textarea class="form-control" id="comment" rows="10" placeholder="Write your comment here." required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Reply</button>
            <button type="reset" class="btn btn-danger">Clear</button>
        </form>
    </div>


</asp:Content>