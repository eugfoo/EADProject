using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProj.DAL;

namespace FinalProj.BLL
{
    public class Users
    {
        public int id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string isOrg { get; set; }
        public string passHash { get; set; }

        public Users(){}

        public Users(string uEmail, string uName, string uIsOrg, string uPassHash)
        {
            name = uName;
            email = uEmail;
            isOrg = uIsOrg;
            passHash = uPassHash;
        }

        public Users(int uId, string uEmail, string uName, string uIsOrg, string uPassHash)
        {
            id = uId;
            name = uName;
            email = uEmail;
            isOrg = uIsOrg;
            passHash = uPassHash;
        }

        public int AddUser()
        {
            userDAO user = new userDAO();
            int result = user.Insert(this);
            return result;
        }

        public Users GetUserByEmail(string email)
        {
            userDAO user = new userDAO();
            return user.SelectByEmail(email);
        }
    }
}