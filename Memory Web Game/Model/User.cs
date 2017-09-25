using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Memory_Web_Game.Model
{
    public class User
    {
        public int UserID { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Password { get; set; }
        public int Type { get; set; }
        public int IsActive { get; set; }
        public int IsPremium { get; set; }
        public int IsOnline { get; set; }
        public int IsSubscribed { get; set; }
        public string ProfileLink { get; set; }
    }
}