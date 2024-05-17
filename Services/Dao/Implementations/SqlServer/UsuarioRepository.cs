using Dao.Contracts;
using Services.Dao.Helpers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
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
            //Esto debería ser una Tx
            SqlHelper.ExecuteNonQuery("UsuarioInsert", CommandType.StoredProcedure,
              new SqlParameter[] { new SqlParameter("@IdUsuario", obj.IdUsuario),
                                   new SqlParameter("@UserName", obj.UserName),
                                   new SqlParameter("@Password", obj.Password) });

            //Stop al SQL SERVER

            //Hay que verificar las relaciones?
            foreach (var item in obj.Accesos)
            {
                if(item.GetCount() == 0)
                {
                    //Estoy ante una patente
                    //Usuario_PatenteInsert

                }
                else
                {
                    //Estoy ante una familia
                    //Usuario_FamiliaInsert
                }
            }



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
