import 'package:flutter/material.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/view/main_screen.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/view/open_screen.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/view/splash_screen.dart';
// import 'package:ppkd_flutter/meet_1/meet.dart';
// import 'package:ppkd_flutter/tugas_1_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
        OpenScreen.id: (context) => OpenScreen(),
        MainScreen.id: (context) => MainScreen(),
        // "/": (context) => Open(),
        // "/login": (context) => TugasEnamFlutter(),
        // TugasTujuhFlutter.id: (context) => TugasTujuhFlutter(),
        // LoginScreenApp.id: (context) => LoginScreenApp(),
        // RegisterScreen.id: (context) => RegisterScreen(),
        // SiswaApp.id: (context) => SiswaApp(),
        // TugasSebelasFlutter.id: (context) => TugasSebelasFlutter(),
        // TugasTujuhFlutter.id: (context) => TugasTujuhFlutter(),
        // UserListScreen.id:
        //     (context) =>
        //         UserListScreen(), // "dropdown": (context) => TugasTujuhDropDown(),
        // "datepciker": (context) => TugasTujuhDatepicker(),
        // "timepicker": (context) => TugasTujuhTimepicker(),
      },
      debugShowCheckedModeBanner: false,

      title: 'PPKD',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        scaffoldBackgroundColor: Color(0xffFEF4FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 37, 71, 18),
        ),
      ),
      // home: Open(),
    );
  }
}
