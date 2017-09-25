using Memory_Web_Game.Controller;
using Memory_Web_Game.Model;
using Memory_Web_Game.Observer;
using Memory_Web_Game.Subject;
using Memory_Web_Game.web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Memory_Web_Game
{
    public class Counter : ISubject
    {
        private List<IObserver> observers;
        private int count;
        public Counter()
        {
            observers = new List<IObserver>();
            count = 0;
        }
        public void Increment()
        {
            count++;
            NotifyObservers(count);
        }
        public void Decrement()
        {
            if (count > 0)
            {
                count--;
                NotifyObservers(count);
            }
        }
        public void RegisterObserver(Object obj)
        {
            string email = (string)obj;
            //observers.Add(observer);
            User user  = new User();
            user.Email = email;
            user.IsSubscribed = 1;
            DBController dbcontroller = new DBController();
            dbcontroller.Update(user, 1);
        }

        public void UnregisterObserver(Object obj)
        {
            //observers.Remove(observer);
            string email = (string)obj;
            User user = new User();
            user.Email = email;
            user.IsSubscribed = 0;
            DBController dbcontroller = new DBController();
            dbcontroller.Update(user, 1);
        }

        public void NotifyObservers(Object obj)
        {
            IObserver observer = new Observer.Observer();
                observer.Update(obj);
        }
    }
}