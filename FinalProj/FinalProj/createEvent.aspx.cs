﻿using System;
using System.Collections.Generic;
using System.IO;
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
		protected void changetoDefaultBorder()
		{
			eventTitle.BorderColor = System.Drawing.Color.LightGray;
			eventAddress.BorderColor = System.Drawing.Color.LightGray;
			eventDate.BorderColor = System.Drawing.Color.LightGray;
			startTime.BorderColor = System.Drawing.Color.LightGray;
			endTime.BorderColor = System.Drawing.Color.LightGray;
			maxAttend.BorderColor = System.Drawing.Color.LightGray;
			FileUploadControl.BackColor = System.Drawing.Color.White;
			desc.BorderColor = System.Drawing.Color.LightGray;

		}
		protected void createBtn_Click(object sender, EventArgs e)
		{
			changetoDefaultBorder();

			Events ev = new Events();
			string errmsg = "";
			PanelError.Visible = false;

			if (eventTitle.Text.ToString() == "")
			{
				errmsg = "Title cannot be empty! <br>";
				eventTitle.BorderColor = System.Drawing.Color.Red;

			}
			if (eventAddress.Text.ToString() == "")
			{
				errmsg += "Address cannot be empty! <br>";
				eventAddress.BorderColor = System.Drawing.Color.Red;
			}
			if (eventDate.Text.ToString() == "")
			{
				errmsg += "Date cannot be empty! <br>";
				eventDate.BorderColor = System.Drawing.Color.Red;
			}
			if (startTime.Text.ToString() == "")
			{
				errmsg += "StartTime cannot be empty! <br>";
				startTime.BorderColor = System.Drawing.Color.Red;
			}
			if (endTime.Text.ToString() == "")
			{
				errmsg += "EndTime cannot be empty! <br>";
				endTime.BorderColor = System.Drawing.Color.Red;
			}
			if (maxAttend.Text.ToString() == "")
			{
				errmsg += "Maximum number of attendees cannot be empty! <br>";
				maxAttend.BorderColor = System.Drawing.Color.Red;
			}
			if (desc.Text.ToString() == "")
			{
				errmsg += "Description cannot be empty! <br>";
				desc.BorderColor = System.Drawing.Color.Red;
			}

			if (desc.Text.ToString() != "")
			{
				int enterCount = 0, index = 0;

				while (index < desc.Text.Length)
				{
					// check if current char is part of a word
					if (desc.Text[index] == '\r' && desc.Text[index + 1] == '\n')
						enterCount++;
					index++;
				}
				if (desc.Text.Length > 3000 + enterCount)
				{
					errmsg += "Character Limit in Description Exceeded! <br>";
					desc.BorderColor = System.Drawing.Color.Red;
				}
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
					errmsg += "Please ensure that you entered a valid Start & End Time <br>";
					startTime.BorderColor = System.Drawing.Color.Red;
					endTime.BorderColor = System.Drawing.Color.Red;
				}
			}

			if (eventDate.Text.ToString() != "")
			{
				string date = eventDate.Text.ToString();
				DateTime dt = Convert.ToDateTime(date);
				System.Diagnostics.Debug.WriteLine(date);
				System.Diagnostics.Debug.WriteLine(dt);
				if (dt < DateTime.Now.Date)
				{
					errmsg += "Please enter a valid date <br>";
					eventDate.BorderColor = System.Drawing.Color.Red;
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
				string picture = "";
				string note = noteText.Text.ToString();
				int advertisement = 0;
				//int hour = 0;
				//string eventStartTime24 = "";
				//string eventEndTime24 = "";


				if (advCheck.Checked == true)
				{
					advertisement = 1;

				}

				if (FileUploadControl.HasFile)
				{

					string filename = Path.GetFileName(FileUploadControl.PostedFile.FileName);
					FileUploadControl.SaveAs(Server.MapPath("~/Img/" + filename));
					picture = filename;
					picChosen.Text = filename;

				}
				else if (FileUploadControl.HasFile == false)
				{

					string filename = "defaultPic.jpg";


					picture = filename;

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
				Response.Redirect("createdEvent.aspx");
			}
		}

		protected void UploadButton_Click(object sender, EventArgs e)
		{

		}

	}
}