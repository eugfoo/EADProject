using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.BLL;

namespace FinalProj
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //if(tbEmail.isInDB)
            //{
            //}
            Users user = new Users(tbEmail.Text, tbName.Text, cbIsOrg.Checked.ToString(), tbPass.Text);
            user.AddUser();
            Response.Redirect("LogIn.aspx");
        }
    }
}