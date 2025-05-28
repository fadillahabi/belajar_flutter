import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';

class TugasTujuhSwitch extends StatefulWidget {
  const TugasTujuhSwitch({super.key});

  @override
  State<TugasTujuhSwitch> createState() => _TugasTujuhSwitchState();
}

class _TugasTujuhSwitchState extends State<TugasTujuhSwitch> {
  bool valueCheck = false;
  bool isSwitchOn = false;

  @override
  // void initState() {
  //   valueCheck = widget.valueCheck ?? false;
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchOn ? AppColor.blue12 : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isSwitchOn
                ? Text(
                  "Aktifkan Mode Gelap",
                  style: TextStyle(color: Colors.white),
                )
                : Text(
                  "Aktifkan Mode Terang",
                  style: TextStyle(color: AppColor.blue12),
                ),
            Switch(
              value: isSwitchOn,
              onChanged: (value) {
                setState(() {
                  isSwitchOn = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
