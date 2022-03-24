using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

class Assignment
{
    static void Main(string[] args)
    {
        int pilihan;
        string jawab;

        menu :
    
        Console.WriteLine("================================");
        Console.WriteLine("Assignment 1 (Programming Logic)");
        Console.WriteLine("================================");
        Console.WriteLine("1. Segitiga Alphabet");
        Console.WriteLine("2. Segitiga Angka");
        Console.WriteLine("3. Faktorial");
        Console.WriteLine("4. Balik Angka");
        Console.WriteLine("5. Convert Angka To String");
        Console.WriteLine("6. Balik Huruf");
        Console.WriteLine("7. Tentang Saya");
        Console.WriteLine("8. Keluar");
        Console.WriteLine("================================");
        Console.Write ("Masukan menu pilihan (1-8) : ");

        pilihan = Convert.ToInt16(Console.ReadLine());
        switch(pilihan)
        {

        case 1 :
        int n;
        string huruf = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
       
        Console.Write("Enter the range (n) = ");
        n = Convert.ToInt16(Console.ReadLine());

        for (int i = 1; i <= n; i++)
        {   
            int y = 0;
            for (int j = 0; j < n + i; j++)
            {   
                if(j > n-i)
                {
                    if(y < huruf.Length)
                    {
                        if(j >= n)
                        Console.Write(huruf[y--]);
                    else
                        Console.Write(huruf[y++]);
                    } else {
                        if(j >= n)
                        Console.Write(huruf[huruf.Length%y--]);
                    else
                        Console.Write(huruf[huruf.Length%y++]);
                    }
                        
                } else {
                    Console.Write(" ");
                }
            }
            Console.WriteLine();
        }
        goto menu;
        break ;

        case 2 :
        int k;
        Console.Write("Enter the range (n) = ");
        k = Convert.ToInt16(Console.ReadLine());

        for (int i = 1; i <= k; i++)
        {   
            int b = 0;
            for (int j = 1; j < k + i; j++)
            {   
                if(j > k-i)
                {
                    if(j > k)
                        Console.Write(--b);
                    else
                        Console.Write(++b);
                } else {
                    Console.Write(" ");
                }
            }
            Console.WriteLine();
        }
        goto menu;
        break;
        
        case 3 :
        int m;
        Console.Write("Enter a number : ");
        int a = int.Parse(Console.In.ReadLine());
        m = 1;
            Console.Write(a + "! = ");

            for (int i = 1; i <= a; i++)
            {
                m = m * i;

                Console.Write(a - (i - 1));
                if (i != a)

                    Console.Write("*");
            }
            Console.WriteLine();
            Console.Write("Factorial of {0} is = ", a);
            Console.WriteLine(m);
            Console.ReadLine();
        goto menu;
        break;

        case 4 :
        int rm, reverse = 0;
        Console.Write("Enter the number : ");
        int value = int.Parse(Console.ReadLine());
        while (value>0)
        {
            rm = value % 10;
            reverse = reverse *10 + rm;
            value = value / 10;
        }
        Console.WriteLine($"Reversed number : {reverse}");
        Console.ReadLine();
        goto menu;
        break;

        case 5:
        int num, next_digit, digit;
        int[] r = new int[10];
        
        string[] words = {"zero","one","two","three","four","five","six","seven","eight","nine"};
         
        Console.Write("Enter the number : ");
        num = Convert.ToInt32(Console.ReadLine());
        Console.Write("Numbers in words : ");
        next_digit = 0;
        digit = 0;
        do {
            next_digit = num % 10;
            r[digit] = next_digit;
            digit++;
            num = num / 10;
         } while (num > 0);
         digit--;
         for (; digit >= 0; digit--)
         Console.Write(words[r[digit]] + " ");
         Console.ReadLine();
        goto menu;
        break;

        case 6:
        string str = "", rev = "";  
            int Length = 0;  
            Console.Write("Enter a word : ");  
            str = Console.ReadLine();   
            Length = str.Length - 1;  
            while(Length>=0)  
            {  
                rev = rev + str[Length];  
                Length--;  
            }   
            Console.WriteLine($"Reversed word : {rev}");  
            Console.ReadLine(); 
        goto menu;
        break;

        case 7:
        Console.WriteLine("Nama : Hafizah Safira Kaurani");
        Console.WriteLine("Jenis Kelamin : Perempuan");
        Console.WriteLine("Alamat : Pamulang, Tangerang Selatan");
        Console.WriteLine("Hobi : Memasak");
        Console.ReadLine();
        goto menu;
        break;
 
        case 8:
        Console.Write("Apakah anda yakin ingin keluar ? [y/n] = ");
        jawab = (Console.ReadLine());
        if (jawab == "n")
        {
            Console.Clear();
            goto menu;
        }
        else if (jawab == "y")
        {
            Console.WriteLine("Terima kasih sudah mencoba!");
            Console.ReadKey(); 
            Environment.Exit(0);
        }
        break;
        
        default:
        Console.WriteLine("Inputan anda salah silahkan ulangi..");
        Console.ReadKey();
        break;

        }
    }
}
