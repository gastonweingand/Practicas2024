using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Contracts
{
    internal interface IObjectMapper<T>
    {
        /// <summary>
        /// Con fill vamos a concretar la adapción de cada backend en un objeto de nuestra app.
        /// </summary>
        /// <param name="values">tecnología implementada backend</param>
        /// <returns>Objeto adaptado. Ej: Customer</returns>
        T Fill(object[] values);
    }
}
