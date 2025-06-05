import 'package:flutter/material.dart';

class TugasTujuhDropDown extends StatefulWidget {
  const TugasTujuhDropDown({super.key});

  @override
  State<TugasTujuhDropDown> createState() => _TugasTujuhDropDownState();
}

class _TugasTujuhDropDownState extends State<TugasTujuhDropDown> {
  String? isSelected;
  final List<String> _vehicle = ["Elektronik", "Pakaian", "Makanan", "Lainnya"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: isSelected,
              hint: Text(
                "Pilih Kategori Produk",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              items:
                  _vehicle.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              onChanged: (String? value) {
                setState(() {
                  isSelected = value;
                  // if (value == "Merah") {
                  //   Navigator.pushNamed(context, MeetTigaA.id);
                  // }
                });
              },
            ),
            Text(
              isSelected != null
                  ? "Anda Memilih Kategori $isSelected"
                  : "Belum memilih kategori",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
