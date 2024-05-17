using Dao.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Dao.Implementations.SqlServer
{

	public sealed class UsuarioRepository : IGenericDao<Usuario>
	{
		#region singleton
		private readonly static UsuarioRepository _instance = new UsuarioRepository();

		public static UsuarioRepository Current
		{
			get
			{
				return _instance;
			}
		}

		private UsuarioRepository()
		{
			//Implent here the initialization of your singleton
		}
        #endregion
        public void Add(Usuario obj)
        {
            throw new NotImplementedException();
        }

        public void Update(Usuario obj)
        {
            throw new NotImplementedException();
        }

        public void Remove(Guid id)
        {
            throw new NotImplementedException();
        }

        public Usuario GetById(Guid id)
        {
            throw new NotImplementedException();
        }

        public List<Usuario> GetAll()
        {
            throw new NotImplementedException();
        }
        
    }

}
