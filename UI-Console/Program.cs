﻿using Dao.Contracts;
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
            //Hoy tengo una implementación in memory de mi Dao
            IGenericDao<Customer> customerDao = Dao.Implementations.Memory.CustomerDao.Current;

            foreach (var item in customerDao.GetAll())
            {
                Console.WriteLine($"id: {item.Id}, code: {item.Code}");
            }

            customerDao.Add(new Customer(0, "Nuevo Producto"));

            Customer customerById = customerDao.GetById(3);

            customerDao.Remove(customerById);

            customerById = customerDao.GetById(11);
            customerById.Name = "Aprendiendo repository pattern";
            customerDao.Update(customerById);

            //Acceso a objetos y servicios DEL NEGOCIO!!!
            Customer customer = new Customer(1, "Deian");

            CustomerLogic customerLogic1 = CustomerLogic.GetInstance();
            customerLogic1.Contador++;
            CustomerLogic customerLogic2 = CustomerLogic.GetInstance();
            customerLogic2.Contador++;

            CustomerLogic.GetInstance().Contador++;

            Console.WriteLine(customerLogic1.Contador);

            Console.WriteLine($"Son iguales cL1 y cL2? {customerLogic1 == customerLogic2} ");

            customerLogic1.SaveOrUpdate(customer);

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
