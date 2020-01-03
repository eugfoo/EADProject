<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="forumCatOverview.aspx.cs" Inherits="FinalProj.forumCatOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .topic-col {
            min-width: 16em;
        }

        .created-col,
        .last-post-col {
            min-width: 12em;
        }
    </style>
    <div class="container my-3">
        <nav class="breadcrumb">
            <a href="forumPage1.aspx" class="breadcrumb-item">Board index</a>
            <span class="breadcrumb-item active">Forum Category</span>
        </nav>
        <div class="row">
            <div class="col-12">
                <div class="container">
                    <div class="row text-white bg-info mb-0 p-4 rounded-top">
                        <div class="col-md-9">
                            <h2 class="h4">ClearView Forum</h2>
                        </div>
                        <div class="col-md-3">
                            <a class="btn btn-dark" href="forumNewThread.aspx" role="button">Create New Thread</a>
                        </div>
                    </div>
                </div>

                <table class="table table-striped table-bordered table-responsive-lg">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col" class="topic-col">Topic</th>
                            <th scope="col" class="created-col">Created</th>
                            <th scope="col" style="min-width: 6em;">Replies/Views</th>
                            <th scope="col" class="last-post-col">Last Post</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-warning">[Discussion]</span> <a href="forumPost.aspx">Shall we have this event next saturday?</a></h3>
                                <div class="small">
                                    Started by: GandyHaley
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">GandyHaley</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>5 replies</div>
                                <div>169 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">KoviTan</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-primary">[News]</span> <a href="#0">The 'We Care' Drive</a></h3>
                                <div class="small">
                                    Started by: AndyLee
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">AndyLee</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>32 replies</div>
                                <div>274 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">Foogene</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-primary">[News]</span> <a href="#0">Project Clean the Beach</a></h3>
                                <div class="small">
                                    Started by: Foogene
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">Foogene</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">GandyHaley</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-danger">[Help]</span> <a href="#0">How is this event good?</a></h3>
                                <div class="small">
                                    Started by: GangZim
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">GangZim</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">CutePie</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-info">[Request]</span> <a href="#0">Can someone go to this event with me?</a></h3>
                                <div class="small">
                                    Started by: Foogene
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">Foogene</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">GandyHaley</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[TEST]</span> <a href="#0">THIS IS A TEST THREAD</a></h3>
                                <div class="small">
                                    Started by: TESTER
                                </div>
                            </td>

                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>02 Apr 2019, 13:33</div>
                            </td>
                            <td>
                                <div>2 replies</div>
                                <div>53 Views</div>
                            </td>
                            <td>
                                <div>by <a href="#0">TESTER</a></div>
                                <div>05 Apr 2017, 20:07</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
            <form class="form-inline float-lg-left d-block d-sm-flex">
                <div class="mb-2 mb-sm-0 mr-2">Display post from previous:</div>
                <div class="form-group mr-2">
                    <label class="sr-only" for="select-time">Time period</label>
                    <select class="form-control form-control-sm" id="select-time">
                        <option value="all-posts" selected>All post</option>
                        <option value="day">1 day</option>
                        <option value="week">1 week</option>
                        <option value="month">1 month</option>
                        <option value="year">1 year</option>
                    </select>
                </div>

                <div class="mb-2 mb-sm-0 mr-2">Sort by:</div>
                <div class="form-group mr-2">
                    <label class="sr-only" for="select-sort">Time period</label>
                    <select class="form-control form-control-sm" id="select-sort">
                        <option value="author">Author</option>
                        <option value="post-time" selected>Post time</option>
                        <option value="replies">replies</option>
                        <option value="subject">subject</option>
                        <option value="views ">views</option>
                    </select>
                </div>

                <div class="form-group mr-2">
                    <label class="sr-only" for="select-direction">Sort direction</label>
                    <select class="form-control form-control-sm" id="select-direction">
                        <option value="ascending">Ascending</option>
                        <option value="descending" selected>Descending</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-primary">Go</button>
            </form>
        </div>
    </div>

</asp:Content>
