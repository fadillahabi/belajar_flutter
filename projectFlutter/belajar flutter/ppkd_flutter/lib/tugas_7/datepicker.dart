import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_format.dart';

class TugasTujuhDatepicker extends StatefulWidget {
  const TugasTujuhDatepicker({super.key});

  @override
  State<TugasTujuhDatepicker> createState() => _TugasTujuhDatepickerState();
}

class _TugasTujuhDatepickerState extends State<TugasTujuhDatepicker> {
  DateTime? pilihHari;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  setState(() {
                    pilihHari = picked;
                  });
                }
              },
              icon: Icon(Icons.date_range),
            ),
            Row(
              children: [
                Text("Tanggal Lahir : ", style: TextStyle(fontSize: 16)),
                Text(
                  pilihHari == null
                      ? "Pilih Tanggal"
                      : AppFormat.createDateFullDay(
                        pilihHari ?? DateTime.now(),
                      ),
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
