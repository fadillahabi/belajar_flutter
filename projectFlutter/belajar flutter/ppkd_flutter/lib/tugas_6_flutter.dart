import 'package:flutter/material.dart';

class TugasEnamFlutter extends StatefulWidget {
  const TugasEnamFlutter({super.key});

  @override
  State<TugasEnamFlutter> createState() => _TugasEnamFlutterState();
}

class _TugasEnamFlutterState extends State<TugasEnamFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00224F),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Color(0xff00224F),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
            color: Colors.white,
          ),
        ),
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Text(
              "Hello Welcome Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: "Roboto",
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 140,
              height: 42,
              // color: Colors.white,
              child: Text(
                "Welcome back please sign in again",

                style: TextStyle(
                  color: Color(0x40ffffff),
                  fontSize: 14,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 88),
            SizedBox(
              width: 327,
              height: 402,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Color(0xffC4C4C4)),
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xff00224F),
                      border: UnderlineInputBorder(
                        //Border awal
                        // borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff12325D),
                          width: 1,
                        ),
                        // borderSide: BorderSide(color: Colors.black, width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        // BOrder Ketika di klik
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        // borderSide: BorderSide(color: Colors.black, width: 5),
                      ),
                      // border
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Color(0xffC4C4C4)),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                      filled: true,
                      fillColor: Color(0xff00224F),
                      border: UnderlineInputBorder(
                        //Border awal
                        // borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xff12325D),
                          width: 1,
                        ),
                        // borderSide: BorderSide(color: Colors.black, width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        // BOrder Ketika di klik
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        // borderSide: BorderSide(color: Colors.black, width: 5),
                      ),
                      // border
                    ),
                  ),
                  SizedBox(height: 35),
                  SizedBox(
                    width: 287,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xff00224F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      onPressed: () {
                        // Kode yang akan dijalankan saat tombol ditekan
                        print('Tombol ditekan!');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
