﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.BLL;
using System.Text;
using System.Security.Cryptography;

namespace FinalProj
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Users checkEmail = new Users();

            if (checkEmail.GetUserByEmail(tbEmail.Text) == null) { // If there isn't a matching email...
                if (tbPass.Text == tbCfmPass.Text) // If the passwords match...
                {
                    string passHash = ComputeSha256Hash(tbPass.Text);
                    Users user = new Users(tbEmail.Text, tbName.Text, cbIsOrg.Checked.ToString(), passHash);
                    user.AddUser();
                    Response.Redirect("LogIn.aspx");
                }
                else
                {
                    lblError.Text = "Passwords do not match.";
                    lblError.Visible = true;
                }
            }
            else
            {
                lblError.Text = "Email is already in use.";
                lblError.Visible = true;
            }
        }

        public string ComputeSha256Hash(string data)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(data));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}