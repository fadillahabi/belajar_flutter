import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/meet_11/constant/app_style.dart';
import 'package:ppkd_flutter/tugas_7/tugas_7_flutter.dart';

class TugasDelapanFlutter extends StatefulWidget {
  const TugasDelapanFlutter({super.key});
  static const String id = "/meet_12b";

  @override
  State<TugasDelapanFlutter> createState() => _TugasDelapanFlutterState();
}

class _TugasDelapanFlutterState extends State<TugasDelapanFlutter> {
  int _selectedIndex = 0;
  static const List<Widget> _screen = [
    // Center(child: Text("Home Screen")),
    TugasTujuhFlutter(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          print("Halaman saat ini : $_selectedIndex");
        },
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.army1,
        unselectedItemColor: AppColor.gray88,
        unselectedLabelStyle: AppStyle.fontBold(
          fontSize: 10,
        ).copyWith(color: AppColor.gray88),
        selectedLabelStyle: AppStyle.fontBold(
          fontSize: 10,
        ).copyWith(color: AppColor.army1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
      ),
    );
  }
}

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue12,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter BottomNavigation Demo',
              style: TextStyle(
                color: AppColor.army3,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Aplikasi ini dibuat menggunakan Flutter dengan struktur navigasi BottomNavigationBar. '
              'Terdiri dari dua tab utama: Beranda dan Profil, untuk navigasi yang cepat dan sederhana.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              'Pembuat:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Fadillah Abi Prayogo',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Versi:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text('1.0.0', style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
