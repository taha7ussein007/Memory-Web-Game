using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Memory_Web_Game.Controller;
using Memory_Web_Game.Model;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Web.Mvc;
using MySql.Data.Entity;
using MySql.Data.MySqlClient;

namespace MemoryWebGameTestUnit

{
    [TestClass]
    public class DBControllerTests
    {
        [TestMethod]
        public void Insert()
        {
            DBController dbController = new DBController();
            User user = new User();
            user.Name = "AhmedTest";
            user.UserName = "AhmedTest";
            user.Email = "AhmedTest@yahoo.com";
            user.Password = "1234";
            user.Mobile = "11111";
            user.IsSubscribed = 1;
            user.Type = 2;
            user.IsActive = 0;
            dbController.Insert(user, 3);
            List<string>[] userName = new List<string>[1];
            userName = dbController.Select("AhmedTest@yahoo.com", 4);
            Assert.AreEqual<string>("AhmedTest", userName[0][0]);
            dbController.Delete(user.Email, 1);
        }

        [TestMethod]
        public void Select()
        {
            DBController dbController = new DBController();
            List<string>[] userName = new List<string>[1];
            userName = dbController.Select("ahmed1@ya.com", 4);
            Assert.AreEqual<string>("ahmed1", userName[0][0]);            
        }

        [TestMethod]
        public void Update()
        {
            DBController dbController = new DBController();
            List<string>[] userName = new List<string>[1];
            userName = dbController.Select("ahmed1@ya.com", 5);
            Assert.AreEqual<string>("False", userName[0][0]);
        }

        [TestMethod]
        public void SelectFalse()
        {
            DBController dbController = new DBController();
            List<string>[] userName = new List<string>[1];
            userName = dbController.Select("ahmed1@ya.com", 4);
            Assert.AreNotEqual<string>("ahmed2", userName[0][0]);
        }

        [TestMethod]
        public void UpdateFalse()
        {
            DBController dbController = new DBController();
            List<string>[] userName = new List<string>[1];
            userName = dbController.Select("ahmed1@ya.com", 5);
            Assert.AreNotEqual<string>("True", userName[0][0]);
        }
          
    }
}
