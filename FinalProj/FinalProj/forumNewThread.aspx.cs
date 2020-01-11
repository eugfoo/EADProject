using FinalProj.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProj
{
    public partial class forumNewThread : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        private bool ValidateInput()
        {
            LblMsg.Text = String.Empty;

            if(DdlPrefix.SelectedIndex == 0)
            {
                LblMsg.Text += "Please Select a Prefix!";
            }

            if (tbTitle.Text == "")
            {
                LblMsg.Text += "Title is required!";
            }

            if (String.IsNullOrEmpty(tbContent.Text))
            {
                LblMsg.Text += "Please fill in the content!";
            }

            if (String.IsNullOrEmpty(LblMsg.Text))
            {
                return true;
            }
            else
            {
                return false;
            }


        }

        private void queryCreatedThreadId()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            myConn.Open();
            SqlCommand cmd = new SqlCommand("Select Max(Id) From Threads", myConn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            myConn.Close();

            HFthreadId.Value = i.ToString();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread();

            HFDate.Value = DateTime.Now.ToString();

            if (ValidateInput())
            {
                thread = new Thread(DdlPrefix.Text, tbTitle.Text, HFDate.Value, "Sample Image", tbContent.Text, "1");
                int result = thread.CreateThread();
               
                if (result == 1)
                {
                    LblMsg.Text = "Hello World!";
                    LblMsg.ForeColor = Color.Green;
                    queryCreatedThreadId();
                    Response.Redirect("forumPost.aspx?threadid=" + HFthreadId.Value);
                }
            }

        }
    }
}