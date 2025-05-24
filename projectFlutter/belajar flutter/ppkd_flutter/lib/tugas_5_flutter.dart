import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  bool munculText = false;
  bool munculIcon = false;
  bool munculMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Halaman Interaktif Pengguna"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  munculText = !munculText;
                });
              },
              child: Text("Tampilkan Nama"),
            ),
            SizedBox(height: 20),
            munculText
                ? Text(
                  "Fadillah Abi Prayogo",
                  // style: TextStyle(fontSize: 12),
                )
                : SizedBox.shrink(),
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
            SizedBox.shrink(),

            TextButton(
              onPressed: () {
                setState(() {
                  munculMore = !munculMore;
                });
              },
              child: Text("Lihat Selengkapnya"),
            ),
            SizedBox(height: 20),
            munculMore
                ? Text(
                  "Marines die, that's what we're here for. But the Marine Corps lives forever.",
                  // style: TextStyle(fontSize: 12),
                )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
