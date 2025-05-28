import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Saya menyetujui semua persyaratan yang berlaku",
            // style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Checkbox(
                // fillColor: WidgetStateProperty.all(AppColor.army1),
                activeColor: AppColor.black22,
                checkColor: Colors.white,
                shape: CircleBorder(),
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
                // style: AppStyle.fontBold(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
