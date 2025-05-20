// void perulanganFor() {
//   for (var i = 1; i <= 5; i++) {
//     print('Perulangan $i');
//   }
// }

// void perulanganWhile() {
//   int i = 1;
//   while (i <= 3) {
//     print('Loop ke~: $i');
//     i++;
//   }
// }

// void perulanganDo() {
//   int i = 1;
//   do{
//     print('Loop ke~: $i');
//     i++;
//   } while (i <= 5);
// }

// void perulanganForin() {
//   List<String> nama = ["Andi", "Budi", "Citra"];
//   for (var n in nama) {
//     print("halo $n");
//   }
// }

void perulanganForEach(){
  List<int> angka = [10, 20, 30];
  angka.forEach((n){
    print("angka $n");
  });
}
