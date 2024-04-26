using Dao.Contracts;
using Dao.Implementations.SqlServer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Factory
{
    public static class FactoryDao
    {
        /// <summary>
        /// Constructor de tipo estático: Se ejecuta una vez en todo un programa...
        /// </summary>
        /// 
        private static int backendType;
        static FactoryDao()
        {
            backendType = int.Parse(ConfigurationManager.AppSettings["BackendType"]);
        }

        public static ICustomerDao CustomerDao
        {
            get
            {
                if(backendType == (int) BackendType.Memory)
                    return Dao.Implementations.Memory.CustomerDao.Current;
                else
                    return Dao.Implementations.SqlServer.CustomerDao.Current;
            }
        }
    }

    internal enum BackendType
    {
        Memory,
        SqlServer,
        Sqlite,
        Oracle
    }
}
