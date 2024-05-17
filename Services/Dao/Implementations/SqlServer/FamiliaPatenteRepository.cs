using Services.Dao.Contracts;
using Services.Dao.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Dao.Implementations.SqlServer
{

	public sealed class FamiliaPatenteRepository : IJoinRepository<Familia>
    {
		#region singleton
		private readonly static FamiliaPatenteRepository _instance = new FamiliaPatenteRepository();

		public static FamiliaPatenteRepository Current
		{
			get
			{
				return _instance;
			}
		}

		private FamiliaPatenteRepository()
		{
			//Implent here the initialization of your singleton
		}
        #endregion

        public void Join(Familia entity)
        {
            //Familia_PatenteSelectByIdFamilia

			using (var reader = SqlHelper.ExecuteReader("Familia_PatenteSelectByIdFamilia", CommandType.StoredProcedure,
              new SqlParameter[] { new SqlParameter("@IdFamilia", entity.Id) }))
            {
                //Mientras tenga algo en mi tabla de Customers
                while (reader.Read())
                {
                    object[] data = new object[reader.FieldCount];
                    reader.GetValues(data);

                    //Busco en el repositorio de patentes a partir del id patente de mi tupla-relación

                    entity.Accesos.Add(PatenteRepository.Current.GetById(Guid.Parse(data[1].ToString())));
                }
            }


        }

    }

}
