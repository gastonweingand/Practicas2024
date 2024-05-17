using Dao.Contracts;
using Services.Dao.Helpers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Services.Dao.Implementations.SqlServer.Mappers;

namespace Services.Dao.Implementations.SqlServer
{

	public sealed class PatenteRepository : IGenericDao<Patente>
	{
		#region singleton
		private readonly static PatenteRepository _instance = new PatenteRepository();

		public static PatenteRepository Current
		{
			get
			{
				return _instance;
			}
		}

		private PatenteRepository()
		{
			//Implent here the initialization of your singleton
		}
        #endregion
        public void Add(Patente obj)
        {
            throw new NotImplementedException();
        }

        public void Update(Patente obj)
        {
            throw new NotImplementedException();
        }

        public void Remove(Guid id)
        {
            throw new NotImplementedException();
        }

        public Patente GetById(Guid id)
        {
            Patente patente = default;

            using (var reader = SqlHelper.ExecuteReader("PatenteSelect", CommandType.StoredProcedure,
              new SqlParameter[] { new SqlParameter("@IdPatente", id) }))
            {
                //Mientras tenga algo en mi tabla de Customers
                if (reader.Read())
                {
                    object[] data = new object[reader.FieldCount];
                    reader.GetValues(data);

                    patente = PatenteMapper.Current.Fill(data);
                }
            }

            return patente;
        }

        public List<Patente> GetAll()
        {
            throw new NotImplementedException();
        }
        
    }

}
