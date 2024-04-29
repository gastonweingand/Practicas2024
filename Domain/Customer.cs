using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    /// <summary>
    /// Esta clase se utiliza para modelar un cliente...
    /// </summary>
    public class Customer
    {
        public Guid IdCustomer { get; set; }
        public int Code { get; set; }

        public string Name { get; set; }

        public CategoryEnum Category { get; set; }

        /// <summary>
        /// Constructor con todos los argumentos...
        /// </summary>
        /// <param name="code">Param 1</param>
        /// <param name="name">Param 2</param>
        public Customer(int code, string name)
        {
            Code = code;
            Name = name;
        }
        public Customer()
        {
            
        }
    }
}
