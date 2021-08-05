using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace appPrueba
{
    public class Circle :Shape
    {
        public double P1 { get; set; }
        public double P2 { get; set; }

        public Circle(double x, double y) {
            P1 = x;
            P2 = y;
        }
        public override double GetArea() {
            return P1 * P1 * 3.14;
        }
    }
}
