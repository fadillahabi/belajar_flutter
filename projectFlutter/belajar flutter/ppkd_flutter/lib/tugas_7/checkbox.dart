import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/meet_11/constant/app_style.dart';

class TugasTujuhCheckbox extends StatefulWidget {
  const TugasTujuhCheckbox({super.key});

  @override
  State<TugasTujuhCheckbox> createState() => _TugasTujuhCheckboxState();
}

class _TugasTujuhCheckboxState extends State<TugasTujuhCheckbox> {
  bool valueCheck = false;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text("Checkbox Page"),
  //   Text("Switch Page"),
  //   Text("Dropdown Page"),
  //   Text("Datepicker Page"),
  //   Text("Timepicker Page"),
  // ];

  @override
  // void initState() {
  //   valueCheck = widget.valueCheck ?? false;
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.blue12,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Saya menyetujui semua persyaratan yang berlaku",
              style: AppStyle.fontBold(fontSize: 18),
            ),
            Row(
              children: [
                Checkbox(
                  // fillColor: WidgetStateProperty.all(AppColor.army1),
                  activeColor: AppColor.black22,
                  checkColor: Colors.white,
                  // shape: CircleBorder(),
                  side: BorderSide(color: AppColor.black22, width: 1),
                  value: valueCheck,
                  onChanged: (value) {
                    setState(() {
                      print("Checkbox value changed: $value");
                      valueCheck = value ?? false;
                    });
                  },
                ),
                Text(
                  valueCheck
                      ? "Lanjutkan pendaftaran diperbolehkan"
                      : "Anda belum bisa melanjutkan",
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
