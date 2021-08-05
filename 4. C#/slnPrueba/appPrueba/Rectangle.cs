using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace appPrueba
{
    public class Rectangle :Shape
    {
        public double P1 { get; set; }
        public double P2 { get; set; }

        public Rectangle(double x, double y)
        {
            P1 = x;
            P2 = y;
        }

        public override double GetArea() {
            return P1 * P2;
        }
    }
}
