using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace appPrueba
{
    class Program
    {
        static void Main(string[] args)
        {                        
            Console.WriteLine("Presione 1 para circulo o 2 para Rectangulo");
            string opcion = Console.ReadLine().ToString();
            if (opcion == "1")
            {
                Console.WriteLine("Ingrese el radio del circulo");
                double radio = Convert.ToInt32(Console.ReadLine().ToString());
                Circle circle = new Circle(radio, 0);
                Console.WriteLine("El area del circulo es: " + circle.GetArea());
                Console.ReadLine();
            }
            else if (opcion == "2")
            {
                Console.WriteLine("Ingrese el ancho del rectangulo");
                double Width = Convert.ToInt32(Console.ReadLine().ToString());
                Console.WriteLine("Ingrese el Altura del rectangulo");
                double Height = Convert.ToInt32(Console.ReadLine().ToString());
                Rectangle circle = new Rectangle(Width, Height);
                Console.WriteLine("El area del rectangulo es: " + circle.GetArea());
                Console.ReadLine();
            }
            else {
                Console.WriteLine("Opción incorrecta");
                Console.ReadLine();
            }

        }
    }
}
