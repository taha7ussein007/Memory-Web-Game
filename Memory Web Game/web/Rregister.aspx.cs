using Memory_Web_Game.Controller;
using Memory_Web_Game.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Memory_Web_Game.web
{
    public partial class Rregister : System.Web.UI.Page
    {
        User regsUser = new User();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            regsUser.UserName = usernamesignup.Text.ToString();
            regsUser.Name = name.Text.ToString();
            regsUser.Email = emailsignup.Text.ToString();
            regsUser.Mobile = mobile.Text.ToString();
            regsUser.Password = passwordsignup.Text.ToString();
            regsUser.Type = 4;
            regsUser.IsActive = 1;
            DBController dbcontroller = new DBController();
            dbcontroller.Insert(regsUser, 3);
        }
    }
}