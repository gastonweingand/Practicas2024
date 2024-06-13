using Dao.Contracts.UnitOfWork;
using Dao.Implementations.SqlServer.Helpers;
using System.Configuration;

namespace Dao.Implementations.SqlServer.UnitOfWork
{
    public class UnitOfWorkSqlServer : IUnitOfWork
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MainConString"].ConnectionString;

        public UnitOfWorkSqlServer()
        {
        }

        public IUnitOfWorkAdapter Create()
        {
            return new UnitOfWorkSqlServerAdapter(connectionString);
        }
    }
}
