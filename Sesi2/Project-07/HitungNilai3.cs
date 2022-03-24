using System;

class HitungNilai3 
{
    public static void Main(string[] args)
    {
        int nilai1, nilai2 = 0;

        Console.Write("jumlah nilai 1 = ");
        nilai1 = int.Parse(Console.ReadLine());
        Console.Write("jumlah nilai 2 = ");
        nilai2 = int.Parse(Console.ReadLine());

        Console.WriteLine("Hasil Perbandingan : ");
        Console.WriteLine($"nilai 1 > nilai 2 : {nilai1 > nilai2}");
        Console.WriteLine($"nilai 1 >= nilai 2 : {nilai1 >= nilai2}");
        Console.WriteLine($"nilai 1 < nilai 2 : {nilai1 < nilai2}");
        Console.WriteLine($"nilai 1 <= nilai 2 : {nilai1 <= nilai2}");
        Console.WriteLine($"nilai 1 == nilai 2 : {nilai1 == nilai2}");
        Console.WriteLine($"nilai 1 != nilai 2 : {nilai1 != nilai2}");
    }
}