void kelulusan() {
  int uts = 90;
  int uas = 60;
  double kehadiran = 24 / 30 * 100;
  double rata_rata = (uts + uas) / 2;

  print("======================");
  print("====CEK KELULUSAN====");
  print("Nilai UTS : $uts");
  print("Nilai UAS : $uas");
  print("Cek Kehadiran : $kehadiran%");
  print("Status Mahasiswa: ");

  if (rata_rata >= 70 && kehadiran >= 0.75 * 100 && uts >= 60 && uas >= 60) {
    print("Mahasiswa dinyatakan LULUS");
  } else {
    print("Mahasiswa dinyatakan TIDAK LULUS");
  }
  ;
}
