/// DIGITAL BIODATA ANGGOTA KLUB

//membuat variabel dan nilainya
String name = "Abi";
int age = 23;
double height = 175.5;
bool isStudent = false;
List<String> bukuFavorit = ["Harry Potter", "Fairy Land"];
Map<String, dynamic> informasiTambahan = {
  "Alamat": "Jalan Mundu",
  "Profesi": "Junior Mobile Programmer",
  "Jumlah kakak kandung": 2,
  "No. Telpn": 087775487205,
  "No. Rumah": 79,
};

/*Fungsi ini berguna untuk memanggil
  nilai diatas*/
void memanggil() {
  print("Nama saya: $name");
  print("Umur saya: $age tahun");
  print("Tinggi badan saya: $height cm");
  print("Status mahasiswa: $isStudent");
  print("Buku favorit saya: ${bukuFavorit[0]}");
  print(
    "Alamat rumah saya: ${informasiTambahan["Alamat"]}, Profesi saya: ${informasiTambahan["Profesi"]}",
  );
}
