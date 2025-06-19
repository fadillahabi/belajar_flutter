import 'package:flutter/material.dart';

class TugasLimaFlutter extends StatefulWidget {
  const TugasLimaFlutter({super.key});

  @override
  State<TugasLimaFlutter> createState() => _TugasLimaFlutterState();
}

class _TugasLimaFlutterState extends State<TugasLimaFlutter> {
  bool munculText = false;
  bool munculIcon = false;
  bool munculMore = false;
  int nilaiTambah = 0;
  bool munculText2 = false;
  bool tekanSekali = false;
  bool tekanDuakali = false;
  bool tahanLama = false;
  bool champion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "WKWKPEDIA",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.message_sharp, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          print("tekan disni");
          setState(() {
            nilaiTambah++;
          });
          print(nilaiTambah);
        },
        icon: Icon(Icons.add),
        label: Text("Add"),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    munculText = !munculText;
                  });
                },
                child: Text("Nama Author"),
              ),
              SizedBox(height: 8),
              munculText
                  ? Text(
                    "Fadillah Abi Prayogo",
                    // style: TextStyle(fontSize: 12),
                  )
                  : SizedBox.shrink(),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  print("Gambar diklik");
                  setState(() {
                    champion = !champion;
                  });
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/champion.jpeg',
                      width: 350,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    champion
                        ? Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Liverpool",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    munculIcon = !munculIcon;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: munculIcon ? Colors.red : Colors.grey, // berubah warna
                ),
              ),
              Text("Jumlah Like : $nilaiTambah"),
              TextButton(
                onPressed: () {
                  setState(() {
                    munculMore = !munculMore;
                  });
                },
                child: Text("Lihat Selengkapnya"),
              ),
              SizedBox(height: 4),
              munculMore
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Liverpool berhasil menjadi juara UEFA Champions League 2019 setelah mengalahkan Tottenham Hotspur dengan skor 2-0 di final yang berlangsung pada 1 Juni 2019 di Wanda Metropolitano Stadium, Madrid. Gol cepat Mohamed Salah dari titik penalti di menit ke-2 dan gol penutup dari Divock Origi di menit ke-87 memastikan kemenangan The Reds. Gelar ini menjadi trofi Liga Champions ke-6 bagi Liverpool dan yang pertama bagi pelatih Jürgen Klopp bersama klub tersebut, sekaligus menandai kebangkitan Liverpool sebagai kekuatan utama di sepak bola Eropa...",
                      // style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  )
                  : SizedBox.shrink(),
              // SizedBox.shrink(),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  print("Ditekan sekali");
                  setState(() {
                    tekanSekali = !tekanSekali;
                  });
                },
                onDoubleTap: () {
                  print("Ditekan dua sekali");
                  setState(() {
                    tekanDuakali = !tekanDuakali;
                  });
                },
                onLongPress: () {
                  print("Tahan lama");
                  setState(() {
                    tahanLama = !tahanLama;
                  });
                },
                child: Container(
                  height: 40,
                  width: 350,
                  color: Colors.lightBlueAccent,
                  child: Center(
                    child: Text(
                      "Tekan aku",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
