using Dao.Contracts;
using Dao.Contracts.UnitOfWork;
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
            UnitOfWork = new Implementations.SqlServer.UnitOfWork.UnitOfWorkSqlServer();
        }

        /// <summary>
        /// Dao sin Tx
        /// </summary>
        public static ICustomerDao CustomerDao
        {
            get
            {
                if(backendType == (int) BackendType.Memory)
                    return Dao.Implementations.Memory.CustomerDao.Current;

                throw new Exception();
                //else
                //  return Dao.Implementations.SqlServer.CustomerDao.Current;
            }
        }

        public static IUnitOfWork UnitOfWork { get; private set; }
    }

    internal enum BackendType
    {
        Memory,
        SqlServer,
        Sqlite,
        Oracle
    }
}
