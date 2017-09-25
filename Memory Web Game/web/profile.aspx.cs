using Memory_Web_Game.Controller;
using Memory_Web_Game.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Memory_Web_Game.web
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                String username = Session["UserName"] as String;
                lblWelcom.Text = "Welcom : " + username;
            }
            else
            {
                //frm.Visible = false;
            }

            // keep me logged in
            HttpCookie CookieName = Request.Cookies["username"];

            if (!IsPostBack)
            {
                //if (CookieName != null)
                //{
                //    LoginDiv.Visible = false;
                //    Label3.Visible = true;
                //    Label3.Text = CookieName.Value;
                //    Button2.Visible = true;

                //}
                //else
                //{
                //    LoginDiv.Visible = true;
                //    Label3.Visible = false;
                //    Button2.Visible = false;

                //}
            }


            string email = Session["email"] as string;
            List<string>[] userSubscribed = new List<string>[1];
            DBController dbcontroller = new DBController();
            userSubscribed = dbcontroller.Select(email,5); //DB
            string isUnsub = userSubscribed[0][0];            
            if (isUnsub != "False")
            {
                btnSubscribe.Visible = false;
                btnUnsubscribe.Visible = true;
            }
            else
            {
                btnSubscribe.Visible = true;
                btnUnsubscribe.Visible = false;
            }
            List<string>[] data = new List<string>[5];
            data = dbcontroller.Select(Session["username"].ToString(),2);

            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table border = '0' style='width:100%'>");
            html.Append("<tr>");
            html.Append("<th> ....</th>");
            html.Append("<th> Publisher </th>");
            html.Append("<th> Titel </th>");
            html.Append("<th> Post Content </th>");
            html.Append("<th> Date and Time </th>");
            html.Append("</tr>");
            html.Append("<tr>");
            string raw;
            for (int j = 0; j < data[0].Count; j++)
            {
                html.Append("<td> <input type='checkbox' name='post' value='" + data[0][j] + "'></td>");
                for (int i = 1; i < data.Length; i++)
                {
                        raw = data[i][j];
                        html.Append("<td><a href=#>" + raw + "</a></td>");
                }
                html.Append("</tr>");
                html.Append("<tr>");
            }         
            html.Append("</tr>");
            html.Append("</table>");
            lblTablePost.Text = html.ToString();
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            string email = Session["email"] as string;
            Counter subscribe = new Counter();
            subscribe.RegisterObserver(email);
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btnUnsubscribe_Click(object sender, EventArgs e)
        {
            Counter unsubscribe = new Counter();
            string email = Session["email"] as string;
            unsubscribe.UnregisterObserver(email);
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Server.Transfer("gallery.aspx", true);
             
  //// keep me logged in 

            HttpCookie CookieName = Request.Cookies["username"];
            CookieName.Expires.AddMilliseconds(1);
            CookieName.Value = null;
            Response.Cookies.Add(CookieName);
        }

        protected void btnDelet_Click(object sender, EventArgs e)
        {
            string Post = Request.Form["post"];
            if(Post!=null)
            {
                List<int> arrInt = new List<int>();
                arrInt = sTringTOint(Post);
                string emailH = Session["email"] as string;
                DBController dbController = new DBController();
                List<string>[] getID = new List<string>[1];
                getID = dbController.Select(emailH, 7); //DB
                string ID = getID[0][0];
                int idInt = Convert.ToInt32(ID);
                UserPost userPost = new UserPost();
                userPost.arrPostID = arrInt;
                userPost.userID = idInt;
                dbController.Delete(userPost, 2);
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            
        }
        protected List<int> sTringTOint(string postID)
        {
            string temp ="";
            List<int> result = new List<int>();
            foreach (char m in postID)
            {
                if (m == ',')
                {
                    if (temp != "")
                    {
                        result.Add(Convert.ToInt32(temp));
                        temp = "";
                    }
                }
                else
                {
                    temp = temp.Insert(temp.Length, m.ToString());

                }
            }
            result.Add(Convert.ToInt32(temp));
                temp = "";
            return result;
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            //Response.Redirect("#"); // To Taha Code 
            Server.Transfer("Update Info.aspx", true);
        }

        //protected void listPostTitel_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string email = Session["email"] as string;
        //    StringBuilder html = new StringBuilder();
        //    List<string> IDlist = new List<string>();
        //    List<string> titelList = new List<string>();
        //    DBController dbcontroller = new DBController();
        //    IDlist = dbcontroller.SelectID(email);
        //    int idINT = Convert.ToInt32(IDlist[0]);
        //    titelList = dbcontroller.SelectSubject(idINT);
        //    ListItem a = new ListItem();
        //    //html.Append("<ListItem>");
        //    //html.Append("select item");
        //    //html.Append("</ListItem>");
        //    string ab = "select item";
        //    listPostTitel.Items.Add(ab);
        //    listPostTitel.Items.Contains(a);
        //    listPostTitel.Items.Insert(2, ab);
        //    foreach(string item in titelList)
        //    {
        //        //html.Append("<ListItem>");
        //        //html.Append(item);
        //        //html.Append("</ListItem>");
        //        a.Text = item;
        //        listPostTitel.Items.Contains(a);
                
        //    }

        ////    listPostTitel.DataValueField = html.ToString();
        ////    listPostTitel.DataSourceID = html.ToString();
        ////    listPostTitel.DataSource = html.ToString();
        ////    listPostTitel.DataTextField = html.ToString();
        ////    listPostTitel.DataTextFormatString = html.ToString();
             
        //}
    }
}