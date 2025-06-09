import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';

import 'package:ppkd_flutter/tugas_flutter/tugas_11_package/database/db_olahraga.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_11_package/model/olahraga_model.dart';

class EditOlahragaScreen extends StatefulWidget {
  // const EditSiswaScreen({super.key});
  final OlahragaModel peserta;
  const EditOlahragaScreen({required this.peserta});

  @override
  State<EditOlahragaScreen> createState() => _EditOlahragaScreenState();
}

class _EditOlahragaScreenState extends State<EditOlahragaScreen> {
  late TextEditingController namaController;
  late TextEditingController umurController;
  late TextEditingController kotaController;
  late TextEditingController jenisOlahragaController;
  late TextEditingController durasiKegiatanController;
  late TextEditingController frekuensiLatihanController;
  late TextEditingController prestasiController;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.peserta.nama);
    umurController = TextEditingController(
      text: widget.peserta.umur.toString(),
    );
    kotaController = TextEditingController(text: widget.peserta.kota);
    jenisOlahragaController = TextEditingController(
      text: widget.peserta.jenisOlahraga,
    );
    durasiKegiatanController = TextEditingController(
      text: widget.peserta.durasiKegiatan,
    );
    frekuensiLatihanController = TextEditingController(
      text: widget.peserta.frekuensiLatihan,
    );
    prestasiController = TextEditingController(text: widget.peserta.prestasi);
    super.initState();
  }

  void update() async {
    final updated = OlahragaModel(
      id: widget.peserta.id,
      nama: namaController.text,
      umur: int.parse(umurController.text),
      kota: kotaController.text,
      jenisOlahraga: jenisOlahragaController.text,
      durasiKegiatan: durasiKegiatanController.text,
      frekuensiLatihan: frekuensiLatihanController.text,
      prestasi: prestasiController.text,
    );
    await DbOlahraga.updateOlahraga(updated);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: Color(0xff22223B),
        // iconTheme: IconThemeData(
        //   color: Colors.white, //change your color here
        // ),
        title: Text(
          "Form Riwayat Aktivitas Olahraga",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF2E9E4),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Data Pribadi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff22223B),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: TextStyle(color: AppColor.blue12),
                  controller: namaController,
                  decoration: InputDecoration(
                    hintText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(Icons.person, color: Color(0xff9A8C98)),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: umurController,
                  decoration: InputDecoration(
                    hintText: "Umur",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(
                      Icons.accessibility,
                      color: Color(0xff9A8C98),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: kotaController,
                  decoration: InputDecoration(
                    hintText: "Kota",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(
                      Icons.location_city,
                      color: Color(0xffC9ADA7),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Riwayat Aktivitas Olahraga",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff22223B),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: jenisOlahragaController,
                  decoration: InputDecoration(
                    hintText: "Jenis olahraga yang pernah diikuti",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(
                      Icons.fitness_center,
                      color: Color(0xff4A4E69),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: durasiKegiatanController,
                  decoration: InputDecoration(
                    hintText: "Durasi Kegiatan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(
                      Icons.access_time,
                      color: Color.fromARGB(255, 236, 186, 159),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: frekuensiLatihanController,
                  decoration: InputDecoration(
                    hintText: "Frekuensi Latihan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(Icons.repeat, color: Color(0xff6A687A)),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: TextStyle(color: Color(0xff2A2A40)),
                  controller: prestasiController,
                  decoration: InputDecoration(
                    hintText: "Prestasi atau Sertifikat",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    prefixIcon: Icon(
                      Icons.emoji_events,
                      color: Color(0xffD4AF37),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4A4E69),
                    ),
                    onPressed: update,

                    child: Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
