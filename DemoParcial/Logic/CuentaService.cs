using DemoParcial.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace DemoParcial.Logic
{

	public sealed class CuentaService
    {
		#region singleton
		private readonly static CuentaService _instance = new CuentaService();

		public static CuentaService Current
		{
			get
			{
				return _instance;
			}
		}

		private CuentaService()
		{
			//Implent here the initialization of your singleton
		}
		#endregion

		public void Transferir(Cuenta cuentaOrigen, Cuenta cuentaDestino, decimal monto)
		{
			try
			{
				//Reglas de negocios
				//1) Validar que los dos tipos de cuenta sean iguales
				//2) Validar que el saldo de la cuenta origen sea superior al 
				//monto a transferir
				//Dos excepciones de negocio

				if (validacion1 == NOK)
					throw new InvalidCuentaException();
				if (validacion2 == NOK)

				//Si estoy acá, tengo que ejecutar la transacción
				//Begin Transaction

				cuentaDestino.Saldo += monto;
				cuentaOrigen.Saldo -= monto;
				DaoCuenta.Update(cuentaDestino);
				//Se me cayó el SQL...

				DaoCuenta.Update(cuentaOrigen);
				Movimiento movimiento = new Movimiento();
				movimiento.CuentaOrigen = cuentaOrigen;
				movimiento.Fecha = DateTime.Now;
				DaoMovimiento.Insert(movimiento);

				//Commit Transaction

            }
            catch (InvalidCuentaException ex)
			{

			}
		}

		public void Depositar(Cuenta cuenta, decimal monto)
		{


		}

		public void Conversion(Cuenta origen, Cuenta destino, decimal monto, decimal tasa)
		{
			//1) Validar que el titular sea el mismo
			//2) Validar que el monto de la cuenta origen sea superior al monto
			//3) Las cuentas deberían ser de diferente tipo
			//if(origen.GetType() == destino.GetType())



		}
	}
}
