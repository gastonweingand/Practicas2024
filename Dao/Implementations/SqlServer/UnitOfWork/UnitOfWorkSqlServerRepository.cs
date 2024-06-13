
using Dao.Contracts;
using Dao.Contracts.UnitOfWork;
using System.Data.SqlClient;

namespace Dao.Implementations.SqlServer.UnitOfWork
{
    public class UnitOfWorkSqlServerRepository : IUnitOfWorkRepository
    {
        public ICustomerDao CustomerRepository { get; }

        public UnitOfWorkSqlServerRepository(SqlConnection context, SqlTransaction transaction)
        {
            CustomerRepository = new CustomerDao(context, transaction);
        }
    }
}

