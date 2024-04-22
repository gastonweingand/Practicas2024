using Dao.Contracts;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.Implementations.SqlServer
{

	public sealed class CustomerDao : IGenericDao<Customer>
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
            get => "INSERT INTO [dbo].[Customer] (Code, Name) VALUES (@Code, @Name)";
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
            throw new NotImplementedException();
        }

        public void Update(Customer obj)
        {
            throw new NotImplementedException();
        }

        public void Remove(Customer obj)
        {
            throw new NotImplementedException();
        }

        public Customer GetById(Guid id)
        {
            throw new NotImplementedException();
        }

        public List<Customer> GetAll()
        {
            throw new NotImplementedException();
        }

    }

}
