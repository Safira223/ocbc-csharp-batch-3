Panduan :

1. Inisiasi project dotnet :
>> dotnet new webapi -n "MoviesApi" -lang "C#" -au none
2. Tambahkan package yang dibutuhkan untuk menggunakan Framework Entity & SQLite :
>> dotnet add package Microsoft.EntityFrameworkCore.Tools --version 5.0.11
>> dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 5.0.11
>> dotnet add package Microsoft.EntityFrameworkCore.Design --version 5.0.11
>> dotnet add package NuGet.CommandLine.XPlat --version 5.11.0
3. Buat Controller dengan nama MoviesController.cs pada folder Controllers
4. Tambahkan folder Models, lalu tambahkan file MovieData.cs yang berisi fields dan tipe datanya
5. Tambahkan folder Data yang berisi file ApiDbContext.cs
6. Kemudian sesuaikan string connection di dalam appsetting.json :
>>	"ConnectionStrings": {
    "DefaultConnection": "DataSource=movie.db;Cache=Shared"
  },
7. Selanjutnya update startup.cs agar bisa utilize DbContext App di dalam aplikasi MoviesApi
8. Lalu buka startup dan tambahkan :
>>	services.AddDbContext<ApiDbContext>(options =>
                options.UseSqlite(
                    Configuration.GetConnectionString("DefaultConnection")
            	));
9. Kemudian tambahkan middleware DbContext yang dibutuhkan untuk menambahkan initial migrasi untuk membuat database nya :
>> dotnet ef migrations add "Initial Migrations"
>> dotnet ef migrations add InitialCreate
>> dotnet ef migrations add InialCreate --output-dir Migrations
>> dotnet ef database update
10. Lalu lanjutkan build MoviesController untuk method post, get, put, delete dan dikoneksikan ke ApiDbContext
11. Untuk melihat isi dari database yang telah dibuat (movie.db), maka dapat membukanya di SQL Browser
12. Setelah itu jalankan aplikasi :
>> dotnet run
>> https://localhost:5001/api/movies