using Dao.Contracts;
using Domain;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Implementations.Memory
{
    internal sealed class CustomerDao : ICustomerDao
    {
        #region singleton
        private readonly static CustomerDao _instance = new CustomerDao();

        public static CustomerDao Current
        {
            get
            {
                return _instance;
            }
        }

        private CustomerDao()
        {
            _list = new List<Customer>();

            for (int i = 1; i <= 10; i++)
            {
                Customer customer = new Customer(i + 1, i.ToString());
                customer.IdCustomer = Guid.NewGuid();
                _list.Add(customer);
            }
        }
        #endregion

        private static List<Customer> _list;

        public void Add(Customer obj)
        {
            //Qué debería hacer para agregar un customer?
            //Ver si existe? -> Lo validamos en negocio si es que yo
            //envío el id

            //Simulamos que el id es auto-incremental
            obj.IdCustomer = Guid.NewGuid();
            _list.Add(obj);
        }

        public List<Customer> GetAll()
        {
            return _list;
        }

        public Customer GetById(Guid idCustomer)
        {
            //Estructurado, más adelante veremos funcional con Linq
            Customer customer = default;

            foreach (var item in _list)
            {
                if (item.IdCustomer == idCustomer)
                {
                    customer = item;
                    break;
                }
            }

            return customer;
        }

        public void Remove(Guid idCustomer)
        {
            _list.Remove(GetById(idCustomer));
        }

        public void Update(Customer obj)
        {
            Customer customer = GetById(obj.IdCustomer);

            customer.Code = obj.Code;
            customer.Name = obj.Name;

        }

        public Customer GetByCode(int code)
        {
            throw new NotImplementedException();
        }

        public List<Customer> GetByName(string name)
        {
            throw new NotImplementedException();
        }
    }
}

