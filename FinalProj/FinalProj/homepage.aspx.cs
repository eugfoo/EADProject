using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.BLL;

namespace FinalProj
{
    public partial class Corporate : System.Web.UI.Page
    {
        protected List<Events> evList;

        protected void Page_Load(object sender, EventArgs e)
        {

           
            Events ev = new Events();
            evList = ev.GetAllEvents();

            foreach (Events element in evList)
            {
                int index = element.Date.IndexOf(" ");
                element.Date = element.Date.Substring(0, index);
                element.StartTime = element.StartTime.Substring(0, 5);

                if (int.Parse(element.StartTime.Substring(0, 2)) >= 12)
                {
                    element.StartTime = (int.Parse(element.StartTime.Substring(0, 2)) - 12).ToString() + ":" + element.StartTime.Substring(3, 2) + " PM";
                }
                else
                {
                    element.StartTime = element.StartTime + " AM";
                }

            }

        }
        protected void createEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("createEvent.aspx");
        }
    }
}