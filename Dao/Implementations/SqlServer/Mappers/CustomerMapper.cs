using Dao.Contracts;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Implementations.SqlServer.Mappers
{
    internal sealed class CustomerMapper : IObjectMapper<Customer>
    {
        #region singleton
        private readonly static CustomerMapper _instance = new CustomerMapper();

        public static CustomerMapper Current
        {
            get
            {
                return _instance;
            }
        }

        private CustomerMapper()
        {
            //Implent here the initialization of your singleton
        }
        #endregion

        public Customer Fill(object[] values)
        {
            return new Customer()
            {
                IdCustomer = Guid.Parse(values[0].ToString()),
                Code = int.Parse(values[1].ToString()),
                Name = values[2].ToString()
            };
        }

        internal enum CustomerColumns
        {
            IdCustomer = 0,
            Code = 1,
            Name = 2
        }
    }
}
