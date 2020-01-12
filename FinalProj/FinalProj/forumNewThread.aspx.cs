﻿using FinalProj.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
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
                LblMsg.Text += "Please Select a Prefix! <br/>";
                LblMsg.ForeColor = Color.Red;
            }

            if (tbTitle.Text == "")
            {
                LblMsg.Text += "Title is required! <br/>";
                LblMsg.ForeColor = Color.Red;
            }

            if (String.IsNullOrEmpty(tbContent.Text))
            {
                LblMsg.Text += "Please fill in the content! <br/>";
                LblMsg.ForeColor = Color.Red;
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

        private string BadgeColorIdentifier()
        {
            string badgeColorClass = "";
            if (DdlPrefix.SelectedIndex == 1)
            {
                badgeColorClass = "warning";
            }
            else if (DdlPrefix.SelectedIndex == 2)
            {
                badgeColorClass = "info";
            }
            else if (DdlPrefix.SelectedIndex == 3)
            {
                badgeColorClass = "primary";
            }
            else if (DdlPrefix.SelectedIndex == 4)
            {
                badgeColorClass = "danger";
            }
            else if (DdlPrefix.SelectedIndex == 5)
            {
                badgeColorClass = "secondary";
            }

            return badgeColorClass;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread();

            HFDate.Value = DateTime.Now.ToString();
            string picture = "";

            if (FileUploadControl.HasFile)
            {

                string filename = Path.GetFileName(FileUploadControl.PostedFile.FileName);
                FileUploadControl.SaveAs(Server.MapPath("~/Img/" + filename));
                picture = filename;
                picChosen.Text = filename;

                //string strFileName = DateTime.Now.ToString("MM-dd-yyyy_HHmmss");
                //string strFileType = System.IO.Path.GetExtension(FileUploadControl.FileName).ToString().ToLower();
                //FileUploadControl.SaveAs(Server.MapPath("folderpath" + strFileName + strFileType));
            }

            if (ValidateInput())
            {
                thread = new Thread(DdlPrefix.Text, BadgeColorIdentifier() ,tbTitle.Text, "12am", picture, tbContent.Text, "1");
                int result = thread.CreateThread();
               
                if (result == 1)
                {
                    queryCreatedThreadId();
                    Response.Redirect("forumPost.aspx?threadid=" + HFthreadId.Value);
                }
            }

        }
    }
}