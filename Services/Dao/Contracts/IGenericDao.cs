using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Contracts
{
    public interface IGenericDao<T>
    {
        //Pensamos un CRUD para cualquier entidad
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        void Add(T obj);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        void Update(T obj);

        void Remove(Guid id);

        T GetById(Guid id);

        List<T> GetAll();

    }
}
