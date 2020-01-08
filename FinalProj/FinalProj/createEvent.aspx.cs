using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProj.BLL;

namespace FinalProj
{
    public partial class Personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void createBtn_Click(object sender, EventArgs e)
        {
            

            Events ev = new Events();
            string errmsg = "";
            PanelError.Visible = false;

            if (eventTitle.Text.ToString() == "")
            {
                errmsg = "Title cannot be empty! <br>";
            }
            if (eventAddress.Text.ToString() == "")
            {
                errmsg += "Address cannot be empty! <br>";
            }
            if (eventDate.Text.ToString() == "")
            {
                errmsg += "Date cannot be empty! <br>";
            }
            if (startTime.Text.ToString() == "")
            {
                errmsg += "StartTime cannot be empty! <br>";
            }
            if (startTime.Text.ToString() == "")
            {
                errmsg += "EndTime cannot be empty! <br>";
            }
            if (maxAttend.Text.ToString() == "")
            {
                errmsg += "Maximum number of attendees cannot be empty! <br>";
            }
            if (startTime.Text.ToString() != "" && endTime.Text.ToString() != "")
            {
                string startTimeNumber = "";
                string endTimeNumber = "";
                string eventStartTime = startTime.Text.ToString();
                string eventEndTime = endTime.Text.ToString();
                string startFrontdigits = eventStartTime.Substring(0, 2);
                string endFrontdigits = eventEndTime.Substring(0, 2);
                string startBackdigits = eventStartTime.Substring(3, 2);
                string endBackdigits = eventEndTime.Substring(3, 2);
                startTimeNumber = startFrontdigits + startBackdigits;
                endTimeNumber = endFrontdigits + endBackdigits;

                if (int.Parse(startTimeNumber) > int.Parse(endTimeNumber))
                {
                    errmsg += "Please ensure that you entered a valid Start & End Time";
                }
            }

            if (eventDate.Text.ToString() != "")
            {
                string date = eventDate.Text.ToString();
                DateTime dt = Convert.ToDateTime(date);

                if (dt < DateTime.Now)
                {
                    errmsg += "Please enter a valid date";
                }

            }
            
            if (errmsg != "")
            {
                errmsgTb.Text = errmsg;
                PanelError.Visible = true;
                
            }
            else
            {
                string eventStartTime = startTime.Text.ToString();
                string eventEndTime = endTime.Text.ToString();
                string title = eventTitle.Text.ToString();
                string venue = eventAddress.Text.ToString();
                string date = eventDate.Text.ToString();
                int maxAttendees = int.Parse(maxAttend.Text.ToString());
                string description = desc.Text.ToString();
                string picture = picChosen.Text.ToString();
                string note = noteText.Text.ToString();
                int advertisement = 0;
                //int hour = 0;
                //string eventStartTime24 = "";
                //string eventEndTime24 = "";


                if (advCheck.Checked == true)
                {
                    advertisement = 1;
                }



                //string startampm = eventStartTime.Substring(6, 2);
                //string endampm = eventEndTime.Substring(6, 2);


                //if (startampm == "PM")
                //{
                //     hour = int.Parse(eventStartTime.Substring(0, 2)) + 12;
                //     eventStartTime24 = hour.ToString() + eventStartTime.Substring(2, 3);
                //}

                //if (endampm == "PM")
                //{
                //    hour = int.Parse(eventEndTime.Substring(0, 2)) + 12;
                //    eventEndTime24 = hour.ToString() + eventEndTime.Substring(2, 3);
                //}

                ev = new Events(title, venue, date, eventStartTime, eventEndTime, maxAttendees, description, picture, note, advertisement);
                int result = ev.AddEvent();
            }
           

        }

        protected void desc_TextChanged(object sender, EventArgs e)
        {
            charCounter.Text = desc.Text.Length.ToString();
        }
    }
}