import 'package:flutter/material.dart';

// import 'package:ppkd_flutter/tugas_7/tugas_7_timepicker.dart';

class TugasTujuhTimepicker extends StatefulWidget {
  const TugasTujuhTimepicker({super.key});

  @override
  State<TugasTujuhTimepicker> createState() => _TugasTujuhTimepickerState();
}

class _TugasTujuhTimepickerState extends State<TugasTujuhTimepicker> {
  TimeOfDay? pilihJam;
  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 7, minute: 30),
    );

    if (picked != null) {
      setState(() {
        pilihJam = picked;
      });
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Text("Pilih Waktu Pengingat"),
          IconButton(onPressed: _pickTime, icon: Icon(Icons.watch_later)),
          Row(
            children: [
              Text("Pengingat diatur pukul: "),
              Text(
                pilihJam != null
                    ? pilihJam!.format(context)
                    : "Belum memilih waktu",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
