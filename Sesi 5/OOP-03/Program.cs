using System;

namespace OOP_03
{
    class Program
    {
        public static void Main(string[] args)
        {
            Pesawat pesawat = new Pesawat();
            pesawat_tempur pswttempur = new pesawat_tempur();

            pesawat.Nama = "Helly";
            pesawat.JumlahRoda = 3;
            pesawat.Ketinggian = "1000 kaki";
            pesawat.JumlahPenumpang = "3 penumpang";

            pswttempur.Nama = "AZ5OOTPU";
            pswttempur.JumlahRoda = 5;
            pswttempur.Ketinggian = "200 kaki";
            pswttempur.JumlahPenumpang = "2 Penumpang plus kopilot dan asistance";

            pesawat.terbang();
            pswttempur.terbangtinggi();
            Console.Read();
        }
    }
}
