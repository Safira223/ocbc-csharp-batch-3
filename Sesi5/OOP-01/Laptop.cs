using System;

public class Laptop
{
    //atribut/variabel
    public string merk;
    public int ram;
    public int memory;

    //method
    public void Chatting()
    {
        Console.WriteLine("\n{0} sedang chatting", this.merk);
    }
    public void Sosmed()
    {
        Console.WriteLine("\n{0} sedang sosmed", this.merk);
    }
    public void OnlineShop()
    {
        Console.WriteLine("\n{0} sedang online shop", this.merk);
    }

}
