using Dao.Contracts;
using Dao.Helpers;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Dao.Implementations.SqlServer.Mappers;

namespace Dao.Implementations.SqlServer
{

	internal sealed class CustomerDao : ICustomerDao
    {
		#region singleton
		private readonly static CustomerDao _instance = new CustomerDao();

		public static CustomerDao Current
		{
			get
			{
				return _instance;
			}
		}

		private CustomerDao()
		{
			//Implent here the initialization of your singleton
		}
        #endregion


        #region Statements
        private string InsertStatement
        {
            get => "INSERT INTO [dbo].[Customer] (Code, Name) VALUES (@Code, @Name); Select @@IDentity";
        }

        private string UpdateStatement
        {
            get => "UPDATE [dbo].[Customer] SET (Code = @Code, Name = @Name) WHERE IdCustomer = @IdCustomer";
        }

        private string DeleteStatement
        {
            get => "DELETE FROM [dbo].[Customer] WHERE IdCustomer = @IdCustomer";
        }

        private string SelectOneStatement
        {
            get => "SELECT IdCustomer, Code, Name FROM [dbo].[Customer] WHERE IdCustomer = @IdCustomer";
        }

        private string SelectAllStatement
        {
            get => "SELECT IdCustomer, Code, Name FROM [dbo].[Customer]";
        }
        #endregion


        public void Add(Customer obj)
        {
            //SqlParameter parameter = new SqlParameter("@IdCustomer", obj.IdCustomer);
            //parameter.Direction = ParameterDirection.Output;

            object returnValue = SqlHelper.ExecuteScalar("CustomerInsert", CommandType.StoredProcedure,
                new SqlParameter[] { new SqlParameter("@Code", obj.Code),
                                     new SqlParameter("@Name", obj.Name) });
                                    // parameter});

            obj.IdCustomer = Guid.Parse(returnValue.ToString());
        }

        public void Update(Customer obj)
        {
            //ExecuteNonQuery
        }

        public void Remove(Guid id)
        {
            //ExecuteNonQuery
        }

        public Customer GetById(Guid id)
        {
            Customer customer = default;

            using (var reader = SqlHelper.ExecuteReader(SelectOneStatement, CommandType.Text,
              new SqlParameter[] { new SqlParameter("@IdCustomer", id) }))
            {
                //Mientras tenga algo en mi tabla de Customers
                if (reader.Read())
                {
                    object[] data = new object[reader.FieldCount];
                    reader.GetValues(data);

                    customer = CustomerMapper.Current.Fill(data);
                }
            }

            return customer;
        }

        public List<Customer> GetAll()
        {
            List <Customer> customers = new List<Customer>();

            using (var reader = SqlHelper.ExecuteReader(SelectAllStatement, CommandType.Text,
                new SqlParameter[] { }))
            {
                //Mientras tenga algo en mi tabla de Customers
                while(reader.Read()) { 
                
                    object[] data = new object[reader.FieldCount];
                    reader.GetValues(data);
                    //Data Mapper...
                    Customer customer = CustomerMapper.Current.Fill(data);
                    customers.Add(customer);
                }
            }

            return customers;
        }

        public Customer GetByCode(int code)
        {
            throw new NotImplementedException();
        }

        public List<Customer> GetByName(string name)
        {
            throw new NotImplementedException();
        }
    }

}
