using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MultiThreading.CarreraCaballos
{
    internal class Caballo
    {
        #region Miembros de clase

        private static readonly object bloqueo = new object();

        private static int caballosTerminados = 0;

        #endregion

        public int Numero { get; private set; }

        public static Dictionary<Caballo, int> posiciones = new Dictionary<Caballo, int>();

        public Caballo(int numero)
        {
            Numero = numero;
        }

        public void CorrerCarrera()
        {
            int tiempoTotal = 0;
            for (int i = 0; i < 10; i++) // Simular que cada caballo corre 10 tramos
            {
                int tiempoTramo = new Random().Next(100, 1000); // Tiempo aleatorio por tramo (200 ms a 1000 ms)
                Thread.Sleep(tiempoTramo); // Simular tiempo en cada tramo
                tiempoTotal += tiempoTramo;
            }

            // Cuando un caballo termina, se agrega al diccionario
            lock (bloqueo)
            {
                caballosTerminados++;
                posiciones.Add(this, tiempoTotal);
                Console.WriteLine($"El caballo {Numero} ha terminado en la posición {caballosTerminados} con un tiempo de {tiempoTotal} ms.");
            }
        }
    }
}
