using System;

class HitungNilai4
{
    public static void Main(string[] args)
    {
        Console.Write("Enter your age : ");
        int age = int.Parse(Console.ReadLine());
        Console.Write("Password : ");
        string password = Console.ReadLine();

        bool isAdult = age > 18; //statement 1
        bool isPasswordValid = password == "OCBC"; //statement 2

        //menggunakan logika AND
        if(isAdult && isPasswordValid)
        {
            Console.WriteLine("Welcome To The Club!");
        }
        else
        {
            Console.WriteLine("Sorry, try again!");
        }
    }
}