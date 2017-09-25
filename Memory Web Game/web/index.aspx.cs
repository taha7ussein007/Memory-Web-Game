using Memory_Web_Game.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Memory_Web_Game.web
{
    public partial class index : System.Web.UI.Page
    {
        Counter counter = new Counter();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["User"] = null;
            if (Session["email"] != null)
            {
                string email = Session["email"] as string;
                DBController dbcontroller = new DBController();
                List<string>[] getType = new List<string>[1];
                getType = dbcontroller.Select(email, 6); //DB
                string type = getType[0][0];
                int typeInt = Convert.ToInt32(type);
                if (typeInt != 2)
                {
                    frm.Visible = false;
                }
                else
                {
                    frm.Visible = true;
                }
            }
            else
            {
                frm.Visible = false;
            }

        }

        private void InitializeComponent()
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            string emailH = Session["email"] as string;
            DBController dbController = new DBController();
            List<string>[] getID = new List<string>[1];
            getID = dbController.Select(emailH, 7); //DB
            string ID = getID[0][0];
            int idInt = Convert.ToInt32(ID);
            Post pstObject = new Post();
            string subjectString = subject.Text.ToString();
            string postString = post.Text.ToString();
            //Label1.Text = subjectString;
            //Label2.Text = postString;
            List<string> Emails = new List<string>();
            //DBController dbController = new DBController();
            Emails = dbController.Select(); //DB
            pstObject.publisher = idInt; // temp to test the code must change after make login - registiration
            pstObject.subject = subjectString;
            pstObject.post = postString;
            dbController.Insert(pstObject, 1);
            List<string>[] postList = new List<string>[1];
            postList = dbController.Select("NoTHing", 3); //DB
            int lastID = new int();
            foreach (string id in postList[0])
            {
                lastID = Int32.Parse(id);
            }
            foreach (string email in Emails)
            {
                pstObject.users = Int32.Parse(email);
                pstObject.post_id = lastID;
                pstObject.subject = subjectString;
                pstObject.post = postString;
                //Label3.Text = pstObject.Email;
                counter.NotifyObservers(pstObject);
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Counter unsubscribe = new Counter();
        //    string email = unsubscribeEmail.Text.ToString();
        //    unsubscribe.UnregisterObserver(email);
        //}

        //protected void btnSub_Click(object sender, EventArgs e)
        //{
        //    Counter subscribe = new Counter();
        //    string email = unsubscribeEmail.Text.ToString();
        //    subscribe.RegisterObserver(email);
        //}
    }
}