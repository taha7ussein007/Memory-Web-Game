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
    public partial class gallery : System.Web.UI.Page
    {
        User regUser = new User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"] != null)
            {
                Server.Transfer("profile.aspx", true);
            }
        }



        protected void btnLgn_Click(object sender, EventArgs e)
        {
            User loginUser = new User();
            List<string>[] lgnRqrdData = new List<string>[2];
            loginUser.Email = emailsignin.Text.ToString();
            loginUser.Password = password.Text.ToString();
            DBController dbcontroller = new DBController();

            //lgnRqrdData = dbcontroller.SelectInLogin(loginUser); //DB
            lgnRqrdData = dbcontroller.Select(loginUser,1); 
            if (lgnRqrdData[0].Count == 0 || lgnRqrdData[1].Count == 0) 
            {
                Label1.Text = "Error in connection";
            }
            else
            {
                if (loginUser.Email == lgnRqrdData[0][0] && loginUser.Password == lgnRqrdData[1][0])
                {
                    List<string>[] user = new List<string>[1];
                    user = dbcontroller.Select(loginUser.Email,4); //DB
                    Session["UserName"] = user[0][0];
                    Session["email"] = loginUser.Email;
                    //DBController dbController = new DBController();
                    List<string>[] getID = new List<string>[1];
                    getID = dbcontroller.Select(loginUser.Email, 7);
                    string ID = getID[0][0];
                    Session["id"] = ID;
                   
                    Label1.Text = "Login successfully";
                    Server.Transfer("profile.aspx", true);

                    
                }
                else
                {
                    Label1.Text = "Login faild";
                }
            }


            /////  keep me logged in 

            if (loginkeeping.Checked == true)
            {
                HttpCookie CookieName = new HttpCookie("username");
                CookieName.Value = emailsignin.Text;
                CookieName.Expires = DateTime.Now.AddDays(90);
                Response.Cookies.Add(CookieName);
                //LoginDiv.Visible = false;
                //Label3.Visible = true;
                //Button2.Visible = true;
                //Label3.Text = CookieName.Value;
            }
        }
    }
}