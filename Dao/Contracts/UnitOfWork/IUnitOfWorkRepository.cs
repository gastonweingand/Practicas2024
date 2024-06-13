
namespace Dao.Contracts.UnitOfWork
{
    public interface IUnitOfWorkRepository
    {
        ICustomerDao CustomerRepository { get; }
    }
}
