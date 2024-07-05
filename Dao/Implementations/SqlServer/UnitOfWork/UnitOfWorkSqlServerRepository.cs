
using Dao.Contracts;
using Dao.Contracts.UnitOfWork;
using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Dao.Implementations.SqlServer.UnitOfWork
{
    public class UnitOfWorkSqlServerRepository : IUnitOfWorkRepository
    {
        public ICustomerDao CustomerRepository { get; }

        private string customerDao = ConfigurationManager.AppSettings["CustomerConcreteDAO"];

        public UnitOfWorkSqlServerRepository(SqlConnection context, SqlTransaction transaction)
        {
            Type customerType = Type.GetType(customerDao);
            var customerInstance = Activator.CreateInstance(customerType,new object[]
            {
                context, transaction
            });

            CustomerRepository = customerInstance as ICustomerDao; //new CustomerDao(context, transaction);
            //Crear cada repositorio, enviando contexto y Tx
        }
    }
}

