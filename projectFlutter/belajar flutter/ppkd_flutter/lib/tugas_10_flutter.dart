import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/tugas_10_package/thanks_page.dart';

class TugasSepuluhFlutter extends StatefulWidget {
  const TugasSepuluhFlutter({super.key});

  @override
  State<TugasSepuluhFlutter> createState() => _TugasSepuluhFlutterState();
}

class _TugasSepuluhFlutterState extends State<TugasSepuluhFlutter> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _noHPController = TextEditingController();
  final TextEditingController _kotaController = TextEditingController();
  @override
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: AppColor.blue12,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Formulir Pendaftaran Kelas Flutter",
          style: TextStyle(color: Colors.white),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  labelText: "Nama Lengkap",
                  prefixIconColor: AppColor.blue12,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama Wajib Diisi";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  labelText: "Email",
                  prefixIconColor: AppColor.blue12,
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Wajib Diisi";
                  } else if (!value.contains("@")) {
                    return "Email Tidak Valid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _noHPController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  labelText: "Nomor HP",
                  prefixIcon: Icon(Icons.phone),
                  prefixIconColor: AppColor.blue12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _kotaController,
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  labelText: "Kota Domisili",
                  prefixIcon: Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kota Domisili Wajib Diisi";
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
                    backgroundColor: AppColor.blue12,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Berhasil'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Nama : ${_nameController.text}'),
                                Text('Email : ${_emailController.text}'),
                                Text('No. HP : ${_noHPController.text}'),
                                Text('Kota Domisili : ${_kotaController.text}'),
                              ],
                            ),

                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => ThanksPage(
                                            nama: _nameController.text,
                                            kota: _kotaController.text,
                                          ),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Lanjut',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      print("Validasi gagal");
                    }
                  },
                  child: const Text('Daftar', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
