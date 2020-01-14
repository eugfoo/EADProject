using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.BLL;

namespace FinalProj
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Users user = new Users();
            Users tryingUser = user.GetUserByEmail(tbEmail.Text);
            if (tryingUser != null) // user exists
            {
                if (tryingUser.passHash == tbPass.Text) // password matches. note: will do hash checking ltr
                {
                    Session["user"] = tryingUser;
                    Response.Redirect("homepage.aspx");
                }
            }
        }
    }
}