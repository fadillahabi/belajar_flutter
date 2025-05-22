import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff096B68),
        centerTitle: true,
        title: Text(
          'Formulir Submit Data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    // offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Nama",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Color(0xffFFFBDE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Email",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Color(0xffFFFBDE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    onSubmitted: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Masukkan No. HP",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      fillColor: Color(0xffFFFBDE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(padding: EdgeInsets.all(4)),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Masukkan Deskripsi",
                      hintStyle: TextStyle(fontSize: 14),
                      filled: true,
                      fillColor: Color(0xffFFFBDE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: 800,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff096B68),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        // Kode yang akan dijalankan saat tombol ditekan
                        print('Tombol ditekan!');
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Column(
              children: [
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff129990),
                            Color(0xff0ED2F7),
                          ], // Warna gradasi
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Colors.white, // Latar belakang lingkaran
                          child: IconButton(
                            icon: Icon(Icons.add, color: Color(0xff129990)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
