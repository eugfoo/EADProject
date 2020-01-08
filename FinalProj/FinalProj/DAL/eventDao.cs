using FinalProj.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace FinalProj.DAL
{
    public class eventDao
    {
        public List<Events> SelectAll()
        {
            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from tdEvent, Order By eventStartTime";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);

            //Step 5 -  Read data from DataSet to List
            List<Events> evList = new List<Events>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                string eventTitle = row["eventTitle"].ToString();
                string eventVenue = row["eventVenue"].ToString();
                string eventDate = row["eventDate"].ToString();
                string eventStartTime = row["eventStartTime"].ToString();
                string eventEndTime = row["eventEndTime"].ToString();
                int eventMaxAttendees = int.Parse(row["eventMaxAttendees"].ToString());
                string eventDesc = row["eventDesc"].ToString();
                string eventPic = row["eventPic"].ToString();
                string eventNote = row["eventNote"].ToString();
                int eventAdv = int.Parse(row["eventAdv"].ToString());
                Events obj = new Events(eventTitle, eventVenue, eventDate ,eventStartTime, eventEndTime, eventMaxAttendees, eventDesc, eventPic, eventNote, eventAdv);
                evList.Add(obj);
            }

            return evList;
        }
    }
}