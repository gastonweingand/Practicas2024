using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MultiThreading.CarreraCaballos
{
    internal class CarreraManager
    {
        public static void LanzarHilos()
        {
            List<Caballo> caballos = new List<Caballo>();

            //Agrego 10 caballos a la lista
            for (int i = 0; i < 10; i++)
            {
                caballos.Add(new Caballo(i + 1)); //Nro de caballo a la lista
            }

            //Lanzo cada hilo
            List<Thread> hilos = new List<Thread>();
            foreach (var caballo in caballos)
            {
                Thread hilo = new Thread(caballo.CorrerCarrera);
                hilos.Add(hilo);
                hilo.Start();
            }

            //Esperar a que todos los caballos terminen la carrera
            foreach (var hilo in hilos)
            {
                hilo.Join();
            }
        }

        public static void MostrarResultados()
        {
            //Ordenar la lista de posiciones por tiempo total de menor a mayor
            var tablaDePosiciones = Caballo.posiciones.OrderBy(p => p.Value).ToList();

            // Mostrar la tabla de posiciones
            for (int i = 0; i < tablaDePosiciones.Count; i++)
            {
                Console.WriteLine($"Posición {i + 1}: Caballo {tablaDePosiciones[i].Key.Numero} con un tiempo de {tablaDePosiciones[i].Value} ms.");
            }

            // Mostrar el caballo ganador
            var ganador = tablaDePosiciones.First().Key;
            Console.WriteLine($"\n¡El caballo ganador es el Caballo {ganador.Numero} con un tiempo de {ganador.Numero} ms!");
        }
    }
}
