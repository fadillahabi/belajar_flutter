import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';

class MapKategori extends StatefulWidget {
  const MapKategori({super.key});

  @override
  State<MapKategori> createState() => _MapKategoriState();
}

class _MapKategoriState extends State<MapKategori> {
  @override
  List<Map<String, dynamic>> daftarKategori = [
    {"nama": "Buah-buahan", "icon": Icons.local_grocery_store},
    {"nama": "Sayuran", "icon": Icons.eco},
    {"nama": "Elektronik", "icon": Icons.devices_other},
    {"nama": "Pakaian Pria", "icon": Icons.male},
    {"nama": "Pakaian Wanita", "icon": Icons.female},
    {"nama": "Alat Tulis Kantor", "icon": Icons.edit},
    {"nama": "Buku & Majalah", "icon": Icons.menu_book},
    {"nama": "Peralatan Dapur", "icon": Icons.kitchen},
    {"nama": "Makanan Ringan", "icon": Icons.fastfood},
    {"nama": "Minuman", "icon": Icons.local_cafe},
    {"nama": "Mainan Anak", "icon": Icons.toys},
    {"nama": "Peralatan Olahraga", "icon": Icons.fitness_center},
    {"nama": "Produk Kesehatan", "icon": Icons.health_and_safety},
    {"nama": "Kosmetik", "icon": Icons.brush},
    {"nama": "Obat-obatan", "icon": Icons.medication},
    {"nama": "Aksesoris Mobil", "icon": Icons.directions_car},
    {"nama": "Perabot Rumah", "icon": Icons.chair},
    {"nama": "Sepatu & Sandal", "icon": Icons.shopping_bag},
    {"nama": "Barang Bekas", "icon": Icons.recycling},
    {"nama": "Voucher & Tiket", "icon": Icons.confirmation_number},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: AppColor.blue12,
        title: Text("Map Kategori", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 72,
      ),
      body: ListView.builder(
        itemCount: daftarKategori.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(daftarKategori[index]["icon"]),
            title: Text("${daftarKategori[index]["nama"]}"),
          );
        },
      ),
    );
  }
}
