namespace Dao.Contracts.UnitOfWork
{
    public interface IUnitOfWork
    {
        IUnitOfWorkAdapter Create();
    }
}
