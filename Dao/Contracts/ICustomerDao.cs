using Domain;
using System.Collections.Generic;

namespace Dao.Contracts
{
    public interface ICustomerDao : IGenericDao<Customer>
    {
        //FILTROS...
        Customer GetByCode(int code);

        List<Customer> GetByName (string name);
    }
}
