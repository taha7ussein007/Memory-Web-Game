using Memory_Web_Game.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Memory_Web_Game.Observer
{
    public class Observer: IObserver
    {
        public void Update(object obj)
        {
            updatePost(obj);
        }

        private void updatePost(object obj)
        {
            DBController dbcontroller = new DBController();
            dbcontroller.Insert(obj,2);
        }
    }
}