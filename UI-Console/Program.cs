using Domain;
using Logic;
using Services.Domain;
using Services.Facade;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI_Console
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Acceso a objetos y servicios DEL NEGOCIO!!!
            Customer customer = new Customer(1, "Deian");
            CustomerLogic.SaveOrUpdate(customer);

            //Acceso a objetos y servicios de Arq. Base
            User user = new User();
            UserService.Register(user);

            Console.WriteLine("Test de github");

            //Probemos leer el archivo de configuración:

            Console.WriteLine($"Leyendo el path del log {ConfigurationManager.AppSettings["FileLogPath"]}");
            Console.WriteLine($"Leyendo conn app {ConfigurationManager.ConnectionStrings["AppSqlConnection"].ConnectionString}");


        }
    }
}
