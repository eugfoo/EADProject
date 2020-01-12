﻿using FinalProj.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FinalProj.DAL
{
    public class ThreadDAO
    {
        public int Insert(Thread thread)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO Threads (threadPrefix, threadBadgeColor, threadTitle, threadDate, threadImage, threadContent)" +
                "VALUES (@paraThreadPrefix, @paraThreadBadgeColor, @paraThreadTitle, @paraThreadDate, @paraThreadImage, @paraThreadContent)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraThreadPrefix", thread.Prefix);
            sqlCmd.Parameters.AddWithValue("@paraThreadBadgeColor", thread.BadgeColor);
            sqlCmd.Parameters.AddWithValue("@paraThreadTitle", thread.Title);
            sqlCmd.Parameters.AddWithValue("@paraThreadDate", thread.Date);
            sqlCmd.Parameters.AddWithValue("@paraThreadImage", thread.Image);
            sqlCmd.Parameters.AddWithValue("@paraThreadContent", thread.Content);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }
    }
}