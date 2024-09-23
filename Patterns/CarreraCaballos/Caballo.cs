using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PatternsAndHilos.CarreraCaballos
{
    internal class Caballo
    {
        private static Random random = new Random();

        public int Numero { get; private set; }

        public static event Action<Caballo, int> CaballoFinalizo;

        public Caballo(int numero)
        {
            Numero = numero;
        }

        public void CorrerCarrera()
        {
            int tiempoTotal = 0;
            for (int i = 0; i < 10; i++) // Simular que cada caballo corre 10 tramos
            {
                int tiempoTramo = random.Next(100, 1000); // Tiempo aleatorio por tramo (200 ms a 1000 ms)
                Thread.Sleep(tiempoTramo); // Simular tiempo en cada tramo
                tiempoTotal += tiempoTramo;
            }

            // Disparar el evento cuando el cabal lo termina la carrera
            CaballoFinalizo?.Invoke(this, tiempoTotal);  
        }
    }
}
