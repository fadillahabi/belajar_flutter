import 'dart:io';

void soal1() {
  for (var i = 1; i <= 20; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}

void soal2() {
  for (int i = 1; i <=5; i++) {
    stdout.write("*");
  }
}

void soal3() {
  int i = 1;
  while (i <= 4) {
    print('Alabi');
    i++;
  }
}

void soal4(){
  List<String> buah = ["Apel", "Jeruk", "Mangga", "Anggur"];
  for (var n in buah) {
    print("Saya suka $n");
  }
}

void soal5(){
  for (var total = 1; total <= 5; i++) {
  List<String> daftar = ["Beras", "Minyak", "Gula", "Kopi", "Telur"];
  daftar.forEach((n){
    print("item ke-$total $n");
  });
}
}