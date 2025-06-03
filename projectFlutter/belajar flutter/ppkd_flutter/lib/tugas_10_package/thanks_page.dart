import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key, required this.nama, required this.kota});
  final String nama;
  final String kota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: AppColor.blue12,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Konfirmasi", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.teal[50],
          margin: const EdgeInsets.all(24.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 32.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.teal, size: 60),
                const SizedBox(height: 16),
                Text(
                  "Terima Kasih!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "$nama dari $kota telah berhasil mendaftar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.teal[900]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
