using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Proxy
{
    internal class ProxyImagen : IImagen
    {
        private ImagenReal imagenReal;
        private string rutaImagen;
        private bool usuarioAutorizado;

        public ProxyImagen(string rutaImagen, bool usuarioAutorizado)
        {
            this.rutaImagen = rutaImagen;
            this.usuarioAutorizado = usuarioAutorizado;
        }

        public void Mostrar()
        {
            if (usuarioAutorizado)
            {
                if (imagenReal == null)
                {
                    imagenReal = new ImagenReal(rutaImagen);
                }
                imagenReal.Mostrar();
            }
            else
            {
                Console.WriteLine("Acceso denegado: Usuario no autorizado para ver esta imagen.");
            }
        }
    }
}
