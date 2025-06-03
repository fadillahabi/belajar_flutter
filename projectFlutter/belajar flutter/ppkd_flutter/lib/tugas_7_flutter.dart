import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/tugas_10_flutter.dart';
import 'package:ppkd_flutter/tugas_7_package/checkbox.dart';
import 'package:ppkd_flutter/tugas_7_package/datepicker.dart';
import 'package:ppkd_flutter/tugas_7_package/dropdown.dart';
import 'package:ppkd_flutter/tugas_7_package/switch.dart';
import 'package:ppkd_flutter/tugas_7_package/timepicker.dart';
import 'package:ppkd_flutter/tugas_9_flutter.dart';

class TugasTujuhFlutter extends StatefulWidget {
  const TugasTujuhFlutter({super.key});

  @override
  State<TugasTujuhFlutter> createState() => _TugasTujuhFlutterState();
}

class _TugasTujuhFlutterState extends State<TugasTujuhFlutter> {
  Widget _currentScreen = TugasTujuhCheckbox();
  int _selectedIndex = 0;

  void _setScreen(Widget screen, int index) {
    setState(() {
      _selectedIndex = index;
      _currentScreen = screen;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blue12,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Tugas 8 Flutter", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 84,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 230,
              child: DrawerHeader(
                decoration: BoxDecoration(color: AppColor.blue12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/catmuscle.png',
                        ),
                      ),
                    ),
                    Text(
                      "Fadillah Abi Prayogo",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Navigation Menu Input",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("Syarat & Ketentuan"),
              selected: _selectedIndex == 0,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () => _setScreen(TugasTujuhCheckbox(), 0),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Mode Gelap"),
              selected: _selectedIndex == 1,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () => _setScreen(TugasTujuhSwitch(), 1),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Pilih Kategori Produk"),
              selected: _selectedIndex == 2,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () => _setScreen(TugasTujuhDropDown(), 2),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text("Pilih Tanggal Lahir"),
              selected: _selectedIndex == 3,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () => _setScreen(TugasTujuhDatepicker(), 3),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Atur Pengingat"),
              selected: _selectedIndex == 4,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () => _setScreen(TugasTujuhTimepicker(), 4),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("List Map"),
              // selected: _selectedIndex == 4,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TugasSembilanFlutter(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Form"),
              // selected: _selectedIndex == 4,
              selectedTileColor: AppColor.blue12.withOpacity(0.2),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TugasSepuluhFlutter(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: _currentScreen,
    );
  }
}
