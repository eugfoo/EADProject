using FinalProj.BLL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProj
{
    public partial class forumPost : System.Web.UI.Page
    {
        private int iPageSize = 3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["threadid"] != null)
            {
                string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                string myQuery = "Select * From Threads where Id=" + Request.QueryString["threadid"].ToString();
                SqlConnection myConn = new SqlConnection(DBConnect);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myQuery;
                cmd.Connection = myConn;

                cmd.Parameters.AddWithValue("@ThreadId", Request.QueryString["threadid"]);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {

                    LblTitle.Text = ds.Tables[0].Rows[0]["threadTitle"].ToString();
                    LblTitleBig.Text = ds.Tables[0].Rows[0]["threadTitle"].ToString();
                    LblTitleBreadcrumb.Text = ds.Tables[0].Rows[0]["threadTitle"].ToString();
                    LblPostDate.Text = ds.Tables[0].Rows[0]["threadDate"].ToString();
                    LblContent.Text = ds.Tables[0].Rows[0]["threadContent"].ToString();
                    LblPrefix.Text = ds.Tables[0].Rows[0]["threadPrefix"].ToString();
                    Image2.ImageUrl = "~/Img/" + ds.Tables[0].Rows[0]["threadImage"].ToString();
                    HFthreadId.Value = ds.Tables[0].Rows[0]["Id"].ToString();

                    if (ds.Tables[0].Rows[0]["threadImage"].ToString() == "")
                    {
                        Image2.Style.Add("display", "none");

                    }
                    else
                    {
                        Image2.Style.Add("display", "block");
                        

                    }

                }

                
                else
                {
                    //error msg here pls hehe
                }

                myConn.Close();

            }

            if (!IsPostBack)
            {
                //RepliesRptr(HFthreadId.Value);
                GetComments(HFthreadId.Value);
            }

        }

        private void GetComments(string threadId)
        {
            DataTable allComments = new DataTable();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            myConn.Open();
            string sqlCmd = "Select * From ThreadReplies WHERE threadId = @paraThreadId";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd, myConn);
            sqlDa.SelectCommand.Parameters.AddWithValue("@paraThreadId", threadId);
            sqlDa.Fill(allComments);
            myConn.Close();

            PagedDataSource pdsData = new PagedDataSource();

            DataView dv = new DataView(allComments);
            pdsData.DataSource = dv;
            pdsData.AllowPaging = true;
            pdsData.PageSize = iPageSize;

            if (ViewState["PageNumber"] != null)
                pdsData.CurrentPageIndex = Convert.ToInt32(ViewState["PageNumber"]);
            else
                pdsData.CurrentPageIndex = 0;

            if(pdsData.PageCount > 1)
            {
                Repeater1.Visible = true;
                ArrayList allPages = new ArrayList();
                for (int i = 1; i <= pdsData.PageCount; i++)
                    allPages.Add((i).ToString());
                //allPages.RemoveAt(allPages.Count - 1);
                Repeater1.DataSource = allPages;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.Visible = false;
            }
            rptrComments.DataSource = pdsData;
            rptrComments.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ViewState["PageNumber"] = Convert.ToInt32(e.CommandArgument);
            GetComments(HFthreadId.Value);
            //string url = e.CommandArgument.ToString();
            //Response.Redirect("forumPost.aspx?threadid=" + HFthreadId.Value + "/" + url);
        }



        private void RepliesRptr(string threadId)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Select * From ThreadReplies WHERE threadId = @paraThreadId";

            using (SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn))
            {
                da.SelectCommand.Parameters.AddWithValue("@paraThreadId", threadId);
                DataTable allThreads = new DataTable();
                da.Fill(allThreads);
                rptrComments.DataSource = allThreads;
                rptrComments.DataBind();
            }

            //using (SqlConnection myConn = new SqlConnection(DBConnect))
            //{
            //    using (SqlCommand cmd = new SqlCommand("Select * From ThreadReplies WHERE threadId= ORDER BY Id", myConn))
            //    {
            //        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            //        {
            //            DataTable allThreads = new DataTable();
            //            sda.Fill(allThreads);
            //            rptrComments.DataSource = allThreads;
            //            rptrComments.DataBind();
            //        }
            //    }
            //}
        }



        protected void btnReply_Click(object sender, EventArgs e)
        {
            ThreadReply threadReply = new ThreadReply();

            if (String.IsNullOrEmpty(tbReplyContent.Text))
            {
                LblMsg.Text = "Please write something in the reply! <br/>";
                LblMsg.ForeColor = Color.Red;
            }
            else
            {
                DateTime now = DateTime.Now;
                HFDate.Value = now.ToString("g");
                DateTime mDate = Convert.ToDateTime(HFDate.Value);

                threadReply = new ThreadReply(HFthreadId.Value, HFDate.Value, tbReplyContent.Text, "1");
                int result = threadReply.ReplyThread();
                if (result == 1)
                {
                    Response.Redirect("forumPost.aspx?threadid=" + HFthreadId.Value);
                }


            }
        }
    }
}