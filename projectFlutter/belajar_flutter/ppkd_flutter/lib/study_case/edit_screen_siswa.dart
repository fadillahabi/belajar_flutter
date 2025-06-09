import 'package:flutter/material.dart';
import 'package:ppkd_flutter/study_case/database/db_helper.dart';
import 'package:ppkd_flutter/study_case/model/siswa_model.dart';

class EditSiswaScreen extends StatefulWidget {
  // const EditSiswaScreen({super.key});
  final SiswaModel siswa;
  const EditSiswaScreen({required this.siswa});

  @override
  State<EditSiswaScreen> createState() => _EditSiswaScreenState();
}

class _EditSiswaScreenState extends State<EditSiswaScreen> {
  late TextEditingController namaController;
  late TextEditingController umurController;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.siswa.name);
    umurController = TextEditingController(text: widget.siswa.umur.toString());
    super.initState();
  }

  void update() async {
    final updated = SiswaModel(
      id: widget.siswa.id,
      name: namaController.text,
      umur: int.parse(umurController.text),
    );
    await DBHelper.updateSiswa(updated);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Siswa")),
      body: Column(
        children: [
          TextField(
            controller: namaController,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          TextField(
            controller: umurController,
            decoration: InputDecoration(labelText: 'Umur'),
          ),
          ElevatedButton(onPressed: update, child: Text('Update')),
        ],
      ),
    );
  }
}
