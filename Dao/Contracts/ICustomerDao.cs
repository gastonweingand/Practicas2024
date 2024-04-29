using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Contracts
{
    public interface ICustomerDao : IGenericDao<Customer>
    {
        //FILTROS...
        Customer GetByCode(int code);

        List<Customer> GetByName (string name);
    }
}
