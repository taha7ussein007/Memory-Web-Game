using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using Memory_Web_Game.web;
using Memory_Web_Game.Model;
namespace Memory_Web_Game.Controller
{
    public class DBController
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        public DBController()
        {
            Initialize();
        }

        private void Initialize()
        {
            server = "localhost";
            database = "playonline";
            uid = "root";
            password = "";
            //server = "sql8.freemysqlhosting.net";
            //database = "sql8111434";
            //uid = "sql8111434";
            //password = "HDuPWStbQP";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" + database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";
            connection = new MySqlConnection(connectionString);
        }

        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                switch (ex.Number)
                {
                    case 0:
                        //MessageBox.Show("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        //MessageBox.Show("Invalid username/password, please try again");
                        break;
                }
                return false;
            }
        }
        //Close connection
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                //MessageBox.Show(ex.Message);
                return false;
            }
        }
        //Insert statement
        public void Insert(Object obj, int insertNumber)
        {
            //open connection
            if (this.OpenConnection() == true)
            {
                switch (insertNumber)
                {
                    case 1:
                        Post pst = (Post)obj;
                        string query = "INSERT INTO `post`(`publisher`, `title`, `content`) VALUES ('" + pst.publisher + "','" + pst.subject + "','" + pst.post + "')";
                        //create command and assign the query and connection from the constructor
                        MySqlCommand cmd = new MySqlCommand(query, connection);
                        //Execute command
                        cmd.ExecuteNonQuery();
                        break;
                    case 2:
                        Post pst2 = (Post)obj;
                        string query2 = "INSERT INTO `user_post`(`user_id`, `post_id`) VALUES (" + pst2.users + "," + pst2.post_id + ")";
                        //create command and assign the query and connection from the constructor
                        MySqlCommand cmd2 = new MySqlCommand(query2, connection);
                        //Execute command
                        cmd2.ExecuteNonQuery();
                        break;
                    case 3:
                        User usr = (User)obj;
                        string query3 = "INSERT INTO `user`(`name`, `username`, `email`, `mobile`, `password`, `type`, `active`) VALUES ('" + usr.Name + "','" + usr.UserName + "','" + usr.Email + "','" + usr.Mobile + "','" + usr.Password + "'," + usr.Type + "," + usr.IsActive + ")";
                        //create command and assign the query and connection from the constructor
                        MySqlCommand cmd3 = new MySqlCommand(query3, connection);
                        //Execute command
                        try
                        {
                            cmd3.ExecuteNonQuery();

                        }
                        catch (Exception ex)
                        {

                        }
                        break;
                    default:
                        //show err
                        break;
                }
                //close connection
                this.CloseConnection();
            }
        }

        //Update statement
        public void Update(Object obj, int updateNumber)
        {

            //Open connection
            if (this.OpenConnection() == true)
            {
                switch (updateNumber)
                {
                    case 1:
                        User user1 = new User();
                        user1 = (User)obj;
                        string query1 = "UPDATE `user` SET `subscribed`=" + user1.IsSubscribed + " WHERE `email` = '" + user1.Email + "'";
                        //create mysql command
                        MySqlCommand cmd1 = new MySqlCommand();
                        //Assign the query using CommandText
                        cmd1.CommandText = query1;
                        //Assign the connection using Connection
                        cmd1.Connection = connection;
                        //Execute query
                        cmd1.ExecuteNonQuery();
                        //close connection
                        this.CloseConnection();
                        break;
                    case 2:
                        User user2 = new User();
                        user2 = (User)obj;
                        int ID = user2.UserID;
                        string query2 = "UPDATE `user` SET `username`='" + user2.UserName + "',`email`='" + user2.Email + "',`mobile`='" + user2.Mobile + "',`password`='" + user2.Password + "' WHERE `id`="+ID+"";
                        //create mysql command
                        MySqlCommand cmd2 = new MySqlCommand();
                        //Assign the query using CommandText
                        cmd2.CommandText = query2;
                        //Assign the connection using Connection
                        cmd2.Connection = connection;
                        //Execute query
                        cmd2.ExecuteNonQuery();
                        //close connection
                        this.CloseConnection();
                        break;
                }

            }


        }

        //Delete statement
        public void Delete(Object obj, int deleteNumber)
        {
            if (this.OpenConnection() == true)
            {
                switch (deleteNumber)
                {
                    case 1:
                        string email1 = (string)obj;
                        string query1 = "DELETE FROM `user` WHERE `email` = '" + email1 + "'";
                        MySqlCommand cmd1 = new MySqlCommand(query1, connection);
                        cmd1.ExecuteNonQuery();
                        this.CloseConnection();
                        break;
                    case 2:
                        UserPost userPost = new UserPost();
                        userPost = (UserPost)obj;
                        List<int> arrInt = new List<int>();
                        arrInt = userPost.arrPostID;
                        int UserID = userPost.userID;
                        foreach(int ID in arrInt)
                        {
                            string query2 = "DELETE FROM `user_post` WHERE `user_id`= "+UserID+" AND `post_id`="+ID+" ";
                            MySqlCommand cmd2 = new MySqlCommand(query2, connection);
                            cmd2.ExecuteNonQuery();
                        }
                        this.CloseConnection();
                        break;
                }
            }
        }

        //Select statement
        public List<string> Select()//index.aspx.cs
        {
            string query = "SELECT * FROM  `user` WHERE  `subscribed` =1";

            //Create a list to store the result
            List<string> list = new List<string>();

            //Open connection
            if (this.OpenConnection() == true)
            {
                //Create Command
                MySqlCommand cmd = new MySqlCommand(query, connection);
                //Create a data reader and Execute the command
                MySqlDataReader dataReader = cmd.ExecuteReader();

                //Read the data and store them in the list
                while (dataReader.Read())
                {
                    list.Add(dataReader["id"] + "");
                }
                //close Data Reader
                dataReader.Close();

                //close Connection
                this.CloseConnection();

                //return list to be displayed
                return list;
            }
            else
            {
                return list;
            }
        }

        //Select statement
        public List<string>[] Select(Object obj, int selectNumber)
        {
            List<string>[] list = new List<string>[1];
            list[0] = new List<string>();
            //Open connection
            if (this.OpenConnection() == true)
            {
                switch (selectNumber)
                {
                    case 1: //SelectInLogin
                        User loginUser = (User)obj;
                        string query1 = "SELECT  `email`, `password` FROM `user` WHERE `email`= '" + loginUser.Email + "' AND `password`= '" + loginUser.Password + "'";
                        //Create a list to store the result
                        List<string>[] list1 = new List<string>[2];
                        list1[0] = new List<string>();
                        list1[1] = new List<string>();
                        //Create Command
                        MySqlCommand cmd1 = new MySqlCommand(query1, connection);
                        //Create a data reader and Execute the command
                        MySqlDataReader dataReader1 = cmd1.ExecuteReader();
                        //Read the data and store them in the list
                        while (dataReader1.Read())
                        {
                            list1[0].Add(dataReader1["email"] + "");
                            list1[1].Add(dataReader1["password"] + "");
                        }
                        //close Data Reader
                        dataReader1.Close();
                        //close Connection
                        this.CloseConnection();
                        //return list to be displayed
                        return list1;
                    //  break;
                    case 2: //SelectPost
                        string userName2 = (string)obj;
                     
                        string query2 = "SELECT IDM, publisherName, title, content, TIMESTAMP FROM ( SELECT * FROM ( SELECT user_post.user_id, user.username, post.id AS 'IDM', post.publisher, post.title, post.content, post.timestamp FROM user_post, user, post WHERE user.id = user_post.user_id AND post.id = user_post.post_id ) AS table1 JOIN ( SELECT user.id, user.username AS 'publisherName' FROM user WHERE 1 ) AS table2 ON table1.publisher = table2.id ) AS finalTable WHERE username = '" + userName2 + "' ORDER BY TIMESTAMP DESC";
                        List<string>[] list2 = new List<string>[5];
                        list2[0] = new List<string>();
                        list2[1] = new List<string>();
                        list2[2] = new List<string>();
                        list2[3] = new List<string>();
                        list2[4] = new List<string>();
                        //list2[5] = new List<string>();
                        MySqlCommand cmd2 = new MySqlCommand(query2, connection);
                        MySqlDataReader dataReader2 = cmd2.ExecuteReader();
                        while (dataReader2.Read())
                        {
                            list2[0].Add(dataReader2["IDM"] + "");
                            list2[1].Add(dataReader2["publisherName"] + "");
                            list2[2].Add(dataReader2["title"] + "");
                            list2[3].Add(dataReader2["content"] + "");
                            list2[4].Add(dataReader2["timestamp"] + "");
                            //list2[5].Add(dataReader2["publisherName"] + "");
                        }
                        dataReader2.Close();
                        this.CloseConnection();
                        return list2;
                    // break;
                    case 3: //SelectLastID
                        string query3 = "SELECT * FROM  `post` WHERE 1";
                        List<string>[] list3 = new List<string>[1];
                        list3[0] = new List<string>();
                        MySqlCommand cmd3 = new MySqlCommand(query3, connection);
                        MySqlDataReader dataReader3 = cmd3.ExecuteReader();
                        while (dataReader3.Read())
                        {
                            list3[0].Add(dataReader3["id"] + "");
                        }
                        dataReader3.Close();
                        this.CloseConnection();
                        return list3;
                    //break;
                    case 4: //SelectUsername
                        string email4 = (string)obj;
                        string query4 = "SELECT * FROM  `user` WHERE  `email` = '" + email4 + "'";
                        List<string>[] list4 = new List<string>[1];
                        list4[0] = new List<string>();
                        MySqlCommand cmd4 = new MySqlCommand(query4, connection);
                        MySqlDataReader dataReader4 = cmd4.ExecuteReader();
                        while (dataReader4.Read())
                        {
                            list4[0].Add(dataReader4["username"] + "");
                        }
                        dataReader4.Close();
                        this.CloseConnection();
                        return list4;
                    //break;
                    case 5: //SelectSubscribed
                        string email5 = (string)obj;
                        string query5 = "SELECT * FROM  `user` WHERE  `email` = '" + email5 + "'";
                        List<string>[] list5 = new List<string>[1];
                        list5[0] = new List<string>();
                        MySqlCommand cmd5 = new MySqlCommand(query5, connection);
                        MySqlDataReader dataReader5 = cmd5.ExecuteReader();
                        while (dataReader5.Read())
                        {
                            list5[0].Add(dataReader5["subscribed"] + "");
                        }
                        dataReader5.Close();
                        this.CloseConnection();
                        return list5;
                    //break;
                    case 6: //SelectType
                        string email6 = (string)obj;
                        string query6 = "SELECT * FROM  `user` WHERE  `email` = '" + email6 + "'";
                        List<string>[] list6 = new List<string>[1];
                        list6[0] = new List<string>();
                        MySqlCommand cmd6 = new MySqlCommand(query6, connection);
                        MySqlDataReader dataReader6 = cmd6.ExecuteReader();
                        while (dataReader6.Read())
                        {
                            list6[0].Add(dataReader6["type"] + "");
                        }
                        dataReader6.Close();

                        this.CloseConnection();
                        return list6;
                    //break;
                    case 7:   ///Select  ID
                        string email7 = (string)obj;
                        string query7 = "SELECT * FROM  `user` WHERE  `email` = '" + email7 + "'";
                        //Create a list to store the result
                        List<string>[] list7 = new List<string>[1];
                        list7[0] = new List<string>();
                        //Create Command
                        MySqlCommand cmd7 = new MySqlCommand(query7, connection);
                        //Create a data reader and Execute the command
                        MySqlDataReader dataReader7 = cmd7.ExecuteReader();
                        //Read the data and store them in the list
                        while (dataReader7.Read())
                        {
                            list7[0].Add(dataReader7["id"] + "");
                        }
                        //close Data Reader
                        dataReader7.Close();
                        //close Connection
                        this.CloseConnection();
                        //return list to be displayed
                        return list7;
                    case 8: //SelectDataForUpdate
                        User loginUser8 = (User)obj;
                        int ID = loginUser8.UserID;
                        string query8 = "SELECT * FROM  `user` WHERE  `id` = '" + ID + "'";
                        List<string>[] list8 = new List<string>[4];
                        list8[0] = new List<string>();
                        list8[1] = new List<string>();
                        list8[2] = new List<string>();
                        list8[3] = new List<string>();
                        MySqlCommand cmd8 = new MySqlCommand(query8, connection);
                        MySqlDataReader dataReader8 = cmd8.ExecuteReader();
                        while (dataReader8.Read())
                        {
                            list8[0].Add(dataReader8["username"] + "");
                            list8[1].Add(dataReader8["email"] + "");
                            list8[2].Add(dataReader8["password"] + "");
                            list8[3].Add(dataReader8["mobile"] + "");
                        }

                        dataReader8.Close();

                        this.CloseConnection();
                        return list8;
                }

            }
            else
            {
                return list;
            }
            return list;
        }

        //public List<string>[] SelectPost(string userName) //profile.aspx.cs
        //{
        //    string query = "SELECT  username, title, content, timestamp, publisherName FROM ( SELECT * FROM  (SELECT user_post.user_id, user.username, post.publisher, post.title, post.content, post.timestamp FROM user_post, user, post WHERE user.id = user_post.user_id AND post.id = user_post.post_id) AS table1 JOIN (SELECT user.id, user.username as 'publisherName' FROM user WHERE 1) AS table2 ON table1.publisher = table2.id ) AS finalTable WHERE username ='"+userName+"'  ORDER BY timestamp DESC";

        //    //Create a list to store the result
        //    List<string>[] list = new List<string>[5];
        //    list[0] = new List<string>();
        //    list[1] = new List<string>();
        //    list[2] = new List<string>();
        //    list[3] = new List<string>();
        //    list[4] = new List<string>();


        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list[0].Add(dataReader["username"] + "");                    
        //            list[1].Add(dataReader["title"] + "");
        //            list[2].Add(dataReader["content"] + "");
        //            list[3].Add(dataReader["timestamp"] + "");
        //            list[4].Add(dataReader["publisherName"] + "");

        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}

        //public List<string> SelectLastID()//index.aspx.cs
        //{
        //    string query = "SELECT * FROM  `post` WHERE 1";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["id"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}

        //public List<string> SelectUsername(string email)//gallery/aspx.cs
        //{
        //    string query = "SELECT * FROM  `user` WHERE  `email` = '"+email+"'";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["username"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}


        //public List<string> SelectSubscribed(string email)//profile.aspx.cs
        //{
        //    string query = "SELECT * FROM  `user` WHERE  `email` = '" + email + "'";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["subscribed"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}

        //public List<string> SelectType(string email)//index.aspx.cs
        //{
        //    string query = "SELECT * FROM  `user` WHERE  `email` = '" + email + "'";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["type"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}

        //public List<string> SelectSubject(int userID)
        //{
        //    string query = "select title from( SELECT user_post.user_id , user_post.post_id FROM user_post WHERE user_post.user_id = "+userID+" ) as table1 join post on table1.post_id = post.id";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["title"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}

        //public List<string> SelectID(string email)
        //{
        //    string query = "SELECT * FROM  `user` WHERE  `email` = '" + email + "'";

        //    //Create a list to store the result
        //    List<string> list = new List<string>();

        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list.Add(dataReader["id"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}
        //public List<string>[] SelectInLogin(Object obj)//gallery/aspx.cs
        //{
        //    User loginUser = (User)obj;
        //    string query = "SELECT  `email`, `password` FROM `user` WHERE `email`= '" + loginUser.Email + "' AND `password`= '" + loginUser.Password + "'";

        //    //Create a list to store the result
        //    List<string>[] list = new List<string>[2];
        //    list[0] = new List<string>();
        //    list[1] = new List<string>();


        //    //Open connection
        //    if (this.OpenConnection() == true)
        //    {
        //        //Create Command
        //        MySqlCommand cmd = new MySqlCommand(query, connection);
        //        //Create a data reader and Execute the command
        //        MySqlDataReader dataReader = cmd.ExecuteReader();

        //        //Read the data and store them in the list
        //        while (dataReader.Read())
        //        {
        //            list[0].Add(dataReader["email"] + "");
        //            list[1].Add(dataReader["password"] + "");
        //        }
        //        //close Data Reader
        //        dataReader.Close();

        //        //close Connection
        //        this.CloseConnection();

        //        //return list to be displayed
        //        return list;
        //    }
        //    else
        //    {
        //        return list;
        //    }
        //}


    }
}