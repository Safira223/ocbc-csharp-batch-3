using System;

namespace OOP_05
{
    class Program
    {
        public int bilangan1, bilangan2;

        public void bilangan(int angka1, int angka2)
        {
            bilangan1 = angka1;
            bilangan2 = angka2;
        }

        public virtual void penjumlahanperkaliandll()
        {
            Console.WriteLine("Overriding 1..........========>>>>>>>>>");
            Console.WriteLine("Hasil penjumlahan angka {0} dan angka {1} = {2}", bilangan1,bilangan2,bilangan1+bilangan2);
            Console.WriteLine("Hasil Perkalian angka {0} dan angka {1} = {2} \n\n", bilangan1,bilangan2,bilangan1*bilangan2);
        }

        class overide:Program
        {
            public override void penjumlahanperkaliandll()
            {
                Console.WriteLine("Overriding 2..........========>>>>>>>>>");
                Console.WriteLine("Hasil pembagian angka {0} dan angka {1} = {2}", bilangan1,bilangan2,bilangan1/bilangan2);
                Console.WriteLine("Hasil pengurangan angka {0} dan angka {1} = {2} \n\n", bilangan1,bilangan2,bilangan1-bilangan2);
            }

            public static void Main(string[] args)
            {
                overide overide1 = new overide();
                overide1.bilangan(20, 5);
                overide1.penjumlahanperkaliandll();

                Program overriding = new Program();
                overriding.bilangan(10, 5);
                overriding.penjumlahanperkaliandll();
                overriding = new overide();
                overriding.bilangan(20, 5);
                overriding.penjumlahanperkaliandll();
                Console.Read();
            }
        }
    }
}
