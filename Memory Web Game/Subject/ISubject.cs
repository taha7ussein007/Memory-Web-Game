using Memory_Web_Game.Observer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Memory_Web_Game.Subject
{                                                                                              
    public interface ISubject
    {
        void RegisterObserver(Object obj);
        void UnregisterObserver(Object obj);
        void NotifyObservers(Object obj);
    }
}
