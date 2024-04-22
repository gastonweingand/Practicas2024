using Domain;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logic
{
    public class CustomerLogic
    {
        private static CustomerLogic instance = new CustomerLogic(); //Thread Safe gestionado por .net

        private static object instanceLock = new object(); //bandera

        public int Contador { get; set; }

        private CustomerLogic()
        {
            Console.WriteLine("Por acá debería pasar una sola vez en todo el ciclo de vida del programa");
        }

        public static CustomerLogic GetInstance()
        {

        //    //Verificar si existe o no una instacia?
        //    if (instance is null)
        //    {
        //        //th2
        //        //th1
        //        lock (instanceLock)
        //        {
        //            //th1
        //            if (instance is null) { 
        //                //th1
        //                instance = new CustomerLogic();
        //            }
        //        }
        //    }

            return instance;
        }

        //public static CustomerLogic Instance { 
        //    get
        //    {
        //        //Verificar si existe o no una instacia?
        //        if (instance is null)
        //            instance = new CustomerLogic();

        //        return instance;
        //    }
        //}

        public void SaveOrUpdate(Customer customer)
        {
            //Debo validar si la entidad debe ser Insertada o updeteada


        }
        public void Delete(Customer customer)
        {
        }
        public Customer GetById(int id)
        {
            return null;
        }
        public List<Customer> GetAll()
        {
            return null;
        }
    }
}
