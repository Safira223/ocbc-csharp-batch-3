using System;

namespace OOP_01
{
    class Program
    {
        public static void Main(string[] args)
        {
        Laptop laptop1 = new Laptop();

        //akses atribut
        laptop1.merk = "Lenovo";
        laptop1.ram = 4;
        laptop1.memory= 128;

        //tampilkan
        Console.WriteLine("\n Merk laptop adalah {0}", laptop1.merk);
        Console.WriteLine("Kapasitas Ram ada {0}", laptop1.ram);
        Console.WriteLine("Kapasitas Memory ada {0}", laptop1.memory);

        //akses method
        laptop1.Chatting();
        laptop1.Sosmed();
        laptop1.OnlineShop();

        Console.Read();
        }
        }
    }
