import 'package:flutter/material.dart';
import 'package:ppkd_flutter/helper/preference.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/view/open_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  // static const String id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 5), () async {
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
        OpenScreen.id,
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
      // backgroundColor: Color(0xff00224F),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Flutter App",
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              // ),
              Positioned.fill(
                child: Image.asset(
                  ('assets/images/studio_ghibli_logo.png'), // Gunakan banner landscape
                  fit: BoxFit.cover, // Pastikan gambar menutupi seluruh area
                ),
              ),
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
      ),
    );
  }
}
