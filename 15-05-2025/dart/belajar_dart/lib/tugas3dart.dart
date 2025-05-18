import 'dart:io';

void soal1() {
  for (var ganjil = 1; ganjil <= 20; ganjil++) {
    if (ganjil % 2 != 0) {
      print(ganjil);
    }
  }
  print('');
}

void soal2() {
  for (int star = 1; star <= 5; star++) {
    stdout.write("*");
  }
  print('');
  print('');
}

void soal3() {
  int nama = 1;
  while (nama <= 4) {
    print('Alabi');
    nama++;
  }
  print('');
}

void soal4() {
  List<String> buah = ["Apel", "Jeruk", "Mangga", "Anggur"];
  for (var n in buah) {
    print("Saya suka $n");
  }
  print('');
}

void soal5() {
  List<String> daftar = ["Beras", "Minyak", "Gula", "Kopi", "Telur"];
  for (int nomor = 0; nomor < daftar.length; nomor++) {
    print("item ke-${nomor + 1} = ${daftar[nomor]}");
  }
  print('');
}
