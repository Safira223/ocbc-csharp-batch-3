using System;

class Logika04
{
    public static void Main (String[] args)
    {
        double Nilai;
        Console.Write("Nilai : ");
        Nilai= Convert.ToDouble(Console.ReadLine());


        if (Nilai >= 85)
        {
            Console.WriteLine("Kamu Mendapat Grade A");
        }
        else if (Nilai >= 65)
        {
            Console.WriteLine("Kamu Mendapat Grade B");
        }
        else if (Nilai >= 45)
        {
            Console.WriteLine("Kamu Mendapat Grade C");
        }

        else if (Nilai >= 25)
        {

            Console.WriteLine("Kamu Mendapat Grade D");
            for(int i=0; i <=10; i++)
            {
                if(i%2==0){
                    Console.WriteLine("Saya akan bersungguh-sungguh belajar dengan giat {0}", i);
                }
                
            };
        }
        else if (Nilai <= 15)
        {
            Console.WriteLine("Kamu Mendapat Grade E");
        } 
    }
}