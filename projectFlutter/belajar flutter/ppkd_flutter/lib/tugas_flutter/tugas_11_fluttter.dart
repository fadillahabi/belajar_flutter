import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_11_package/database/db_olahraga.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_11_package/model/olahraga_model.dart';

class TugasSebelasFlutter extends StatefulWidget {
  const TugasSebelasFlutter({super.key});
  static const String id = "/tugas_11_flutter";

  @override
  State<TugasSebelasFlutter> createState() => _TugasSebelasFlutterState();
}

class _TugasSebelasFlutterState extends State<TugasSebelasFlutter> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  final TextEditingController kotaController = TextEditingController();
  final TextEditingController jenisOlahragaController = TextEditingController();
  final TextEditingController durasiKegiatanController =
      TextEditingController();
  final TextEditingController frekuensiLatihanController =
      TextEditingController();
  final TextEditingController prestasiController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<OlahragaModel> muatPeserta = [];

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  Future<void> ambilData() async {
    final data = await DbOlahraga().getAllPeserta();
    setState(() {
      muatPeserta = data;
    });
  }

  Future<void> simpanPeserta() async {
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text) ?? 0;
    final kota = kotaController.text;
    final jenisOlahraga = jenisOlahragaController.text;
    final durasiKegiatan = durasiKegiatanController.text;
    final frekuensiLatihan = frekuensiLatihanController.text;
    final prestasi = prestasiController.text;

    if (nama.isNotEmpty &&
        umur > 0 &&
        kota.isNotEmpty &&
        jenisOlahraga.isNotEmpty &&
        durasiKegiatan.isNotEmpty &&
        frekuensiLatihan.isNotEmpty &&
        prestasi.isNotEmpty) {
      await DbOlahraga().insertOlahraga(
        OlahragaModel(
          nama: nama,
          umur: umur,
          kota: kota,
          jenisOlahraga: jenisOlahraga,
          durasiKegiatan: durasiKegiatan,
          frekuensiLatihan: frekuensiLatihan,
          prestasi: prestasi,
        ),
      );
      namaController.clear();
      umurController.clear();
      kotaController.clear();
      jenisOlahragaController.clear();
      frekuensiLatihanController.clear();
      prestasiController.clear();
      ambilData();
    }
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
            child: Form(
              key: _formKey,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama Wajib Diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Umur wajib diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Kota wajib diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Jenis olahraga yang pernah diikuti wajib diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Durasi kegiatan wajib diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Frekuensi latihan wajib diisi";
                      } else {
                        return null;
                      }
                    },
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Prestasi atau sertifikat wajib diisi";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4A4E69),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          simpanPeserta();
                        }
                      },

                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Divider(height: 32),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: muatPeserta.length,
                    itemBuilder: (context, index) {
                      final peserta = muatPeserta[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 12,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 22, // Ukuran lebih ramping & modern
                              backgroundColor: Color(
                                0xFF4A4E69,
                              ), // Blue gray elegan
                              child: Text(
                                "${peserta.id}",
                                style: TextStyle(
                                  color: Color(
                                    0xFFF2E9E4,
                                  ), // Ivory white for contrast
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            title: Text(
                              peserta.nama,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600, // Semi-bold
                                color: Color(0xFF4A4E69), // Untuk dark theme
                                letterSpacing: 0.2, // Sedikit spacing = modern
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Umur: ${peserta.umur}"),
                                Text("Asal Kota: ${peserta.kota}"),
                                Text(
                                  "Jenis Olahraga: ${peserta.jenisOlahraga}",
                                ),
                                Text(
                                  "Durasi Kegiatan: ${peserta.durasiKegiatan}",
                                ),
                                Text(
                                  "Frekuensi Latihan: ${peserta.frekuensiLatihan}",
                                ),
                                Text("Prestasi: ${peserta.prestasi}"),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
