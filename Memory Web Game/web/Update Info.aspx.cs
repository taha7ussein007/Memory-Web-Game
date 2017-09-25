using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Memory_Web_Game.Model;
using Memory_Web_Game.Controller;

namespace Memory_Web_Game.web
{
    public partial class Update_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Server.Transfer("gallery.aspx", true);
                Label1.Text = "Data Was not Fetched -> Session null";
            }

            else
            {
                User loginUser_ = new User();
                loginUser_.UserID = Convert.ToInt32(Session["id"] as string);
                DBController dbcontroller = new DBController();

                List<string>[] UpdateRqrdData = new List<string>[4];
                UpdateRqrdData = dbcontroller.Select(loginUser_, 8);

                if (UpdateRqrdData[0].Count == 0 || UpdateRqrdData[1].Count == 0 || UpdateRqrdData[2].Count == 0 || UpdateRqrdData[3].Count == 0)
                {
                    Label1.Text = "Connection Error";
                }
                else
                {
                    Label1.Text = "Data Was Fetched successfully";
                    usernamesignup.Text = UpdateRqrdData[0][0];
                    emailsignup.Text = UpdateRqrdData[1][0];
                    passwordsignup.Text = UpdateRqrdData[2][0];
                    mobile.Text = UpdateRqrdData[3][0];

                }


            }





        }
        protected void btnUpdt_Click(object sender, EventArgs e)
        {
            User loginUser = new User();
            DBController dbcontroller = new DBController();
            loginUser.UserID = Convert.ToInt32(Session["id"] as string);
            //Label1.Text = loginUser.UserID.ToString();
            //loginUser.Email = emailsignup.Text.ToString();
            //loginUser.Password = passwordsignup.Text.ToString();
            //loginUser.UserName = usernamesignup.Text.ToString();
            //loginUser.Mobile = mobile.Text.ToString();

            loginUser.Email = Request.Form["emailsignup"];
            loginUser.Password = Request.Form["passwordsignup"];
            loginUser.UserName = Request.Form["usernamesignup"];
            loginUser.Mobile = Request.Form["mobile"];

            dbcontroller.Update(loginUser, 2);
            Response.Redirect("Update Info.aspx",true);
            Label1.Text = "Updated successfully";
            

        }


    }
}