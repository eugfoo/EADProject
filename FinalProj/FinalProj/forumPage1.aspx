﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="forumPage1.aspx.cs" Inherits="FinalProj.forumPage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .forum-col {
            min-width: 16em;
        }

        .last-post-col {
            min-width: 12em;
        }

        .event-topic-col{
            min-width:23em;
        }

             
    </style>
    <div class="container my-3">
        <nav class="breadcrumb">
            <span class="breadcrumb-item active">Board Index</span>
        </nav>
        <div class="row">
            <div class="col-12 col-xl-9">
                <div class="container">
                    <div class="row text-white bg-danger mb-0 p-4 rounded-top">
                        <div class="col-md-9">
                            <h2 class="h4">UP-COMING EVENTS</h2>
                        </div>
                        <div class="col-md-3">
                            <a class="btn btn-dark" href="#0" role="button">View Category</a>
                        </div>
                    </div>
                </div>

                <table class="table table-striped table-bordered table-responsive">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col" class="event-topic-col">Topic</th>
                            <th scope="col">Created</th>
                            <th scope="col" style="min-width: 6em;">Replies/Views</th>
                            <th scope="col" class="last-post-col">Last Post</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-success">[EVENT]</span> <a href="#0">Project Clean The Beach</a></h3>
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
                                <h3 class="h6"><span class="badge badge-success">[EVENT]</span> <a href="#0">Purple Parade!</a></h3>
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
                                <h3 class="h6"><span class="badge badge-success">[EVENT]</span> <a href="#0">Helping Bishan Home</a></h3>
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
                                <h3 class="h6"><span class="badge badge-success">[EVENT]</span> <a href="#0">Pink Dot</a></h3>
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
                    </tbody>
                </table>

                <div class="container">
                    <div class="row text-white bg-info mb-0 p-4 rounded-top">
                        <div class="col-md-9">
                            <h2 class="h4">ClearView Forum</h2>
                        </div>
                        <div class="col-md-3">
                            <a class="btn btn-dark" href="forumCatOverview.aspx" role="button">View Category</a>
                        </div>
                    </div>
                </div>

                <table class="table table-striped table-bordered table-responsive">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Topic</th>
                            <th scope="col">Created</th>
                            <th scope="col" style="min-width: 6em;">Replies/Views</th>
                            <th scope="col" class="last-post-col">Last Post</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>
                                <h3 class="h6"><span class="badge badge-warning">[Discussion]</span> <a href="#0">Shall we have this event next saturday?</a></h3>
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
                    </tbody>
                </table>
            </div>

            <div class="col-12 col-xl-3">
                <aside>
                    <div class="row">
                        <div class="col-12 col-sm-6 col-xl-12">
                            <div class="card mb-3 mb-sm-0 mb-xl-3">
                                <div class="card-body">
                                    <h2 class="h4 card-title">Members online</h2>
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                        <li><a href="#0">Forum member name</a></li>
                                    </ul>
                                </div>
                                <div class="card-footer">
                                    <dl class="row mb-0">
                                        <dt class="col-8">Total:</dt>
                                        <dd class="col-4 mb-0">10</dd>
                                    </dl>
                                    <dl class="row mb-0">
                                        <dt class="col-8">Members:</dt>
                                        <dd class="col-4 mb-0">7</dd>
                                    </dl>
                                    <dl class="row mb-0">
                                        <dt class="col-8">Guests:</dt>
                                        <dd class="col-4 mb-0">3</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="h4 card-title">Forum statistics</h2>
                                    <dl class="row mb-0">
                                        <dt class="col-8">Total forums:</dt>
                                        <dd class="col-4 mb-0">15</dd>
                                    </dl>
                                    <dl class="row mb-0">
                                        <dt class="col-8">Total topics:</dt>
                                        <dd class="col-4 mb-0">1927</dd>
                                    </dl>
                                    <dl class="row mb-0">
                                        <dt class="col-8">Total members:</dt>
                                        <dd class="col-4 mb-0">581</dd>
                                    </dl>
                                </div>
                                <div class="card-footer">
                                    <div>Newest Member</div>
                                    <div><a href="#0">Forum member name</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>

</asp:Content>