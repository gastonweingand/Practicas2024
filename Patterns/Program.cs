using Patterns.Bridge;
using Patterns.Proxy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Bridge();
            Proxy();
        }

        private static void Proxy()
        {
            IImagen imagenParaUsuarioAutorizado = new ProxyImagen("foto-alta-resolucion.jpg", true);
            IImagen imagenParaUsuarioNoAutorizado = new ProxyImagen("foto-alta-resolucion.jpg", false);

            Console.WriteLine("Acceso para usuario autorizado:");
            imagenParaUsuarioAutorizado.Mostrar(); // Cargando imagen de alta resolución desde: foto-alta-resolucion.jpg / Mostrando imagen de alta resolución desde: foto-alta-resolucion.jpg

            Console.WriteLine("\nAcceso para usuario no autorizado:");
            imagenParaUsuarioNoAutorizado.Mostrar(); // Acceso denegado: Usuario no autorizado para ver esta imagen.
        }

        private static void Bridge()
        {
            ICanal canalCorreo = new CanalCorreo();
            ICanal canalSMS = new CanalSMS();
            ICanal canalWp = new CanalWhatsApp();

            Notificacion notificacionBaja = new NotificacionBajaPrioridad(canalCorreo, "Mensaje de baja prioridad");
            Notificacion notificacionAlta = new NotificacionAltaPrioridad(canalSMS, "Mensaje de alta prioridad");
            Notificacion notificacionMedia = new NotificacionMediaPrioridad(canalWp, "Mensaje de alta prioridad");

            List<Notificacion> notificaciones = new List<Notificacion>();
            notificaciones.Add(notificacionBaja);
            notificaciones.Add(notificacionMedia);
            notificaciones.Add(notificacionAlta);

            foreach (var item in notificaciones)
            {
                item.Enviar();
            }
        }
    }
}
