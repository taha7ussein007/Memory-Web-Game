using Memory_Web_Game.Observer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Memory_Web_Game.web
{
    public class Post : IObserver
    {
        public int post_id { get; set; }
        public int publisher { get; set; }
        public string subject { get; set; }
        public string post { get; set; }
        public int users { get; set; }
        public void Update(object obj)
        {
            Post globalPost = (Post)obj;
            //here code of show to all object.
        }
    }
}