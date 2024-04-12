using Dao.Contracts;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Implementations.Memory
{
    /// <summary>
    /// 
    /// </summary>
    public class CustomerDao : IGenericDao<Customer>
    {
        private List<Customer> _list = new List<Customer>();

        public CustomerDao() {
        
            for (int i = 1; i <= 10; i++) {
                Customer customer = new Customer(i + 1, i.ToString());
                customer.Id = i;
                _list.Add(customer);
            }
        }

        public void Add(Customer obj)
        {
            //Qué debería hacer para agregar un customer?
            //Ver si existe? -> Lo validamos en negocio si es que yo
            //envío el id

            //Simulamos que el id es auto-incremental
            obj.Id = _list.Count + 1;
            _list.Add(obj);
        }

        public List<Customer> GetAll()
        {
            return _list;
        }

        public Customer GetById(int id)
        {
            //Estructurado, más adelante veremos funcional con Linq
            Customer customer = default;

            foreach (var item in _list)
            {
                if(item.Id == id)
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
