import 'package:flutter/material.dart';
import 'package:ppkd_flutter/helper/preference.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_7_package/tugas_7_flutter.dart';

class Open extends StatefulWidget {
  const Open({super.key});

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin: $isLogin");
      // if (isLogin) {
      //   return Navigator.pushNamedAndRemoveUntil(
      //     context,
      //     "/login",
      //     (route) => false,
      //   );
      // } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        TugasTujuhFlutter.id,
        (route) => false,
      );
      // }
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00224F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // Image.asset("assets/images/logo.png"),
            // Padding(
            //   padding: const EdgeInsets.all(24.0),
            //   child: SizedBox(
            //     width: double.infinity,
            //     height: 56,
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: const Color.fromARGB(255, 219, 176, 46),
            //         foregroundColor: const Color(0xff00224F),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(32),
            //         ),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const TugasEnamFlutter(),
            //           ),
            //         );
            //       },
            //       child: const Text(
            //         'Masuk',
            //         style: TextStyle(
            //           color: Colors.white70,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w700,
            //           fontFamily: "Roboto",
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
