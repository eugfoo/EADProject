﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProj.BLL;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FinalProj.DAL
{
    public class userDAO
    {
        public int Insert(Users user)
        {
            // Execute NonQuery return an integer value
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "INSERT INTO Users(userEmail, userName, userPasswordHash, userIsOrg) " +
                "VALUES (@userEmail, @userName, @userPasswordHash, @userIsOrg)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@userEmail", user.email);
            sqlCmd.Parameters.AddWithValue("@userName", user.name);
            sqlCmd.Parameters.AddWithValue("@userPasswordHash", user.passHash);
            sqlCmd.Parameters.AddWithValue("@userIsOrg", user.isOrg);

            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();
            return result;
        }

        public Users SelectByEmail(string email)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);
            string sqlStmt = "Select * from Users where userEmail = @email";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@email", email);
            DataSet ds = new DataSet();
            da.Fill(ds);

            Users user = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];
                int Uid = Convert.ToInt32(row["Id"]);
                string Uname = row["userName"].ToString();
                string Uemail = row["userEmail"].ToString();
                string UisOrg = row["userIsOrg"].ToString();
                string UpassHash = row["userPasswordHash"].ToString();
                user = new Users(Uid, Uemail, Uname, UisOrg, UpassHash);
            }
            else
            {
                user = null;
            }

            return user;
        }
    }
}