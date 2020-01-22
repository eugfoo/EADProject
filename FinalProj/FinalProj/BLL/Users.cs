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
        public string email { get; set; }
        public string passHash { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string desc { get; set; }
        public int rating { get; set; }
        public string isOrg { get; set; }
        public int points { get; set; }
        public int verified { get; set; }
        public DateTime regDate { get; set; }


        public Users(){}

        public Users(string uEmail, string uName, string uIsOrg, string uPassHash, DateTime uRegDate)
        {
            name = uName;
            email = uEmail;
            isOrg = uIsOrg;
            passHash = uPassHash;
            regDate = uRegDate;
        }

        public Users(int uId, string uEmail, string uPassHash, string uName, string uImage, 
            string uDesc, int uRating, string uIsOrg, int uPoints, int uVerified, DateTime uRegDate)
        {
            id = uId;
            email = uEmail;
            passHash = uPassHash;
            name = uName;
            image = uImage;
            desc = uDesc;
            rating = uRating;
            isOrg = uIsOrg;
            points = uPoints;
            verified = uVerified;
            regDate = uRegDate;
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