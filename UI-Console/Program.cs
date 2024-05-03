﻿using Dao.Contracts;
using Dao.Factory;
using Domain;
using Logic;
using Services.Domain;
using Services.Facade;
using Services.Facade.Extentions;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace UI_Console
{
    internal class Program
    {
        static void Main(string[] args)
        {

            Patente patente1 = new Patente();
            patente1.Id = Guid.NewGuid();
            patente1.Nombre = "Gestión de ventas";
            patente1.DataKey = "mnuGestionVentas";

            Patente patente2 = new Patente();
            patente2.Id = Guid.NewGuid();
            patente2.Nombre = "Visualización de Gestión de ventas";
            patente2.DataKey = "mnuVisualizacionGestionVentas";

            Familia rolVentas = new Familia(patente1);
            rolVentas.Id = Guid.NewGuid();
            rolVentas.Nombre = "Rol de ventas";

            Familia rolVisualizacionVentas = new Familia(patente2);
            rolVisualizacionVentas.Id = Guid.NewGuid();
            rolVisualizacionVentas.Nombre = "Rol visualización de ventas";

            Familia administrator = new Familia(rolVentas);
            administrator.Nombre = "Administrador";
            administrator.Add(rolVisualizacionVentas);

            Patente patente3 = new Patente();
            patente3.Id = Guid.NewGuid();
            patente3.Nombre = "Dashboard general";
            patente3.DataKey = "mnuDashboardGeneral";

            Usuario pepito = new Usuario();
            pepito.UserName = "deian";
            pepito.Accesos.Add(administrator);
            pepito.Accesos.Add(patente3);

            foreach (var item in pepito.Accesos)
            {
                //Cómo sé si item es un elemento primitivo o es una familia?
                if(item.GetCount() > 0)
                {
                    //Soy una familia
                    Familia familia = item as Familia;
                    //Hacer una recursiva...
                    foreach (var item2 in familia.Accesos)
                    {
                        //De nuevo el if...de ver si es familia o es patente
                        if (item.GetCount() == 0)
                        {
                            Patente patente = item as Patente;
                            Console.WriteLine($"Yo soy una opción del menu {patente.DataKey}");
                        }
                    }
                }
                else
                {
                    Patente patente = item as Patente;
                    Console.WriteLine($"Yo soy una opción del menu {patente.DataKey}");
                }
            }






            CultureInfo infoEspañol = Thread.CurrentThread.CurrentUICulture;

            "jorgito".ExtentionWithParameters(4, "pepito");

            string valueCombo = infoEspañol.DisplayName;
            string dataKey = infoEspañol.Name;

            string lblBienvenidos = "Bienvenidos".Translate();
            Console.WriteLine($"Bienvenidos en español: {lblBienvenidos}");

            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");

            dataKey = Thread.CurrentThread.CurrentUICulture.Name;

            //lblBienvenidos = "Bienvenidos".Translate();
            Console.WriteLine($"Bienvenidos en inglés: {"Bienvenidos".Translate()}");

            //Hoy tengo una implementación in memory de mi Dao
            ICustomerDao customerDao = FactoryDao.CustomerDao;
            
            Customer demo = new Customer();
            demo.Code = 23;
            demo.Name = "2604";

            customerDao.Add(demo);

            foreach (var item in customerDao.GetAll())
            {
                Console.WriteLine($"id: {item.IdCustomer}, code: {item.Code}");
            }

            Customer customerGonzalez = customerDao.GetById(Guid.Parse("F5705F68-1FBB-44C7-9DFF-ED98021BDE1E"));


            customerDao.Add(new Customer(0, "Nuevo Producto"));

            Customer customerById = customerDao.GetById(Guid.Parse("71154AF7-E604-446E-8BE3-2A41F5694AE3"));
            customerById.Category = CategoryEnum.Standard;

            customerDao.Remove(Guid.Parse("71154AF7-E604-446E-8BE3-2A41F5694AE3"));

            customerById = customerDao.GetById(Guid.Parse("71154AF7-E604-446E-8BE3-2A41F5694AE3"));
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
            Usuario user = new Usuario();
            UserService.Register(user);

            Console.WriteLine("Test de github");

            //Probemos leer el archivo de configuración:

            Console.WriteLine($"Leyendo el path del log {ConfigurationManager.AppSettings["FileLogPath"]}");
            Console.WriteLine($"Leyendo conn app {ConfigurationManager.ConnectionStrings["AppSqlConnection"].ConnectionString}");


        }
    }
}
