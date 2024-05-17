using Dao.Contracts;
using Services.Dao.Helpers;
using Services.Dao.Implementations.SqlServer.Mappers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Dao.Implementations.SqlServer
{

	public sealed class FamiliaRepository : IGenericDao<Familia>
    {
		#region singleton
		private readonly static FamiliaRepository _instance = new FamiliaRepository();

		public static FamiliaRepository Current
		{
			get
			{
				return _instance;
			}
		}

		private FamiliaRepository()
		{
			//Implent here the initialization of your singleton
		}
        #endregion

        public void Add(Familia obj)
        {
            throw new NotImplementedException();
        }

        public void Update(Familia obj)
        {
            throw new NotImplementedException();
        }

        public void Remove(Guid id)
        {
            throw new NotImplementedException();
        }

        public Familia GetById(Guid id)
        {
            Familia familia = default;

            using (var reader = SqlHelper.ExecuteReader("FamiliaSelect", CommandType.StoredProcedure,
              new SqlParameter[] { new SqlParameter("@IdFamilia", id) }))
            {
                //Mientras tenga algo en mi tabla de Customers
                if (reader.Read())
                {
                    object[] data = new object[reader.FieldCount];
                    reader.GetValues(data);

                    familia = FamiliaMapper.Current.Fill(data);
                }
            }

            return familia;
        }

        public List<Familia> GetAll()
        {
            throw new NotImplementedException();
        }
        
    }

}
