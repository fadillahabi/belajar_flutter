import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_9_package/list_kategori.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_9_package/map_kategori.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_9_package/model_makanan_ringan.dart';

class TugasSembilanFlutter extends StatefulWidget {
  const TugasSembilanFlutter({super.key});

  @override
  State<TugasSembilanFlutter> createState() => _TugasSembilanFlutterState();
}

class _TugasSembilanFlutterState extends State<TugasSembilanFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: AppColor.blue12,
        title: Text(
          "Aplikasi Kategori Toko",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(8)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListKategori()),
                );
              },
              child: Text("List Kategori"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapKategori()),
                );
              },
              child: Text("Map Kategori"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ModelMakananRingan()),
                );
              },
              child: Text("Model Makanan Ringan"),
            ),
          ],
        ),
      ),
    );
  }
}
