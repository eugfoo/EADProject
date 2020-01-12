using FinalProj.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProj.BLL
{
    public class Thread
    {
        public string Prefix { get; set; }
        public string BadgeColor { get; set; }
        public string Title { get; set; }
        public string Date { get; set; }
        public string Image { get; set; }
        public string Content { get; set; }
        public string UserId { get; set; }

        public Thread()
        {

        }

        public Thread(string threadPrefix, string threadBadgeColor, string threadTitle, string threadDate, string threadImage, string threadContent,
            string userId)
        {
            Prefix = threadPrefix;
            BadgeColor = threadBadgeColor;
            Title = threadTitle;
            Date = threadDate;
            Image = threadImage;
            Content = threadContent;
        }

      

        public int CreateThread()
        {
            ThreadDAO dao = new ThreadDAO();
            int result = dao.Insert(this);
            return result;
        }
    }
    

}