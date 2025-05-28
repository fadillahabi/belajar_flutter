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
