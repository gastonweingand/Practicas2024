using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Patterns.Proxy
{
    // Sujeto Real
    internal class ImagenReal : IImagen
    {
        private string rutaImagen;

        public ImagenReal(string rutaImagen)
        {
            this.rutaImagen = rutaImagen;
            CargarImagen();
        }

        private void CargarImagen()
        {
            Console.WriteLine("Cargando imagen de alta resolución desde: " + rutaImagen);
        }

        public void Mostrar()
        {
            Console.WriteLine("Mostrando imagen de alta resolución desde: " + rutaImagen);
        }
    }
}
