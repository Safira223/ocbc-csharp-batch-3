using System;

class MultiDimensi2
{
    static void Main()
    {
        int[,] MultiDimensi2 = 
        {
            { 1, 1 },
            { 2, 4 },
            { 3, 9 },
            { 4, 16 },
            { 5, 25 },
            { 6, 36 },
            { 7, 49 },
            { 8, 64 },
            { 9, 81 },
            { 10, 100 }
        };

            int i, j;

            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 2; j++)
                    Console.Write(MultiDimensi2[i,j] + " ");
                    Console.WriteLine();
            }

    }
}