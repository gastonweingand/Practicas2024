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
    public sealed class CustomerDao : IGenericDao<Customer>
    {
        #region singleton
        private readonly static CustomerDao  _instance = new CustomerDao ();

        public static CustomerDao Current
        {
            get
            {
                return _instance;
            }
        }

        private CustomerDao()
        {
            for (int i = 1; i <= 10; i++)
            {
                Customer customer = new Customer(i + 1, i.ToString());
                customer.Id = Guid.NewGuid();
                _list.Add(customer);
            }
        }
        #endregion

        private static List<Customer> _list = new List<Customer>();

        public void Add(Customer obj)
        {
            //Qué debería hacer para agregar un customer?
            //Ver si existe? -> Lo validamos en negocio si es que yo
            //envío el id

            //Simulamos que el id es auto-incremental
            obj.Id = Guid.NewGuid();
            _list.Add(obj);
        }

        public List<Customer> GetAll()
        {
            return _list;
        }

        public Customer GetById(Guid id)
        {
            //Estructurado, más adelante veremos funcional con Linq
            Customer customer = default;

            foreach (var item in _list)
            {
                if (item.Id == id)
                {
                    customer = item;
                    break;
                }
            }

            return customer;
        }

        public void Remove(Customer obj)
        {
            _list.Remove(obj);
        }

        public void Update(Customer obj)
        {
            Customer customer = GetById(obj.Id);

            customer.Code = obj.Code;
            customer.Name = obj.Name;

        }
    }
}

