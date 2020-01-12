using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProj
{
    public partial class forumPost : System.Web.UI.Page
    {
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
                }
                else
                {
                    //error msg here pls hehe
                }

                myConn.Close();

            }

        }
    }
}