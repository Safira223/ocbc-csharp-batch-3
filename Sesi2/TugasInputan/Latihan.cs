using System;

class Latihan
{
    public static void Main(string[] args)
    {
        String username, password, jk, status;
        int umur;
        bool status_jk, status_nikah;

        Console.WriteLine("== Biodata ==");
        Console.Write("Masukkan Username : ");
        username = Console.ReadLine();
        Console.Write("Masukkan Password : ");
        password = Console.ReadLine();
        Console.Write("Masukkan Umur : ");
        umur = int.Parse(Console.ReadLine());

        do 
        {
            Console.Write("Masukkan Jenis Kelamin : [L/P]");
            jk = Console.ReadLine();
            status_jk = jk == "L" || jk =="P";
        }while(!status_jk);

        if (jk == "L" || jk == "P") 
        {
            Console.WriteLine($"Jenis Kelamin : {jk}");
        }

        do 
        {
            Console.Write("Status Nikah : (yes/no)");
            status= Console.ReadLine();
            status_nikah = status == "yes" || status == "no";
        } while(!status_nikah);

        Console.WriteLine();
        Console.WriteLine("== Tampil Data ==");
        Console.WriteLine($"Username: {username}");
        Console.WriteLine($"Password : {password}");
        Console.WriteLine($"Umur : {umur} tahun");
        Console.WriteLine($"Jenis Kelamin : {jk}");
        Console.WriteLine($"Status Nikah : {status}");

        Console.WriteLine();

        Console.WriteLine("===================");

         Console.WriteLine();

        int bil1, bil2, bil3, total, rata_bil;

        Console.WriteLine("== Aritmatika ==");

        Console.Write("Masukkan Bilangan Pertama : ");
        bil1 = int.Parse(Console.ReadLine());
        Console.Write("Masukkan Bilangan Kedua : ");
        bil2 = int.Parse(Console.ReadLine());
        Console.Write("Masukkan Bilangan Ketiga : ");
        bil3 = int.Parse(Console.ReadLine());

        total = bil1 + bil2 + bil3;
        rata_bil = total / 3;

        Console.WriteLine($"Total Nilai : {total}");
        Console.WriteLine($"Rata-Rata Nilai : {rata_bil}");
        
    }

    

}

