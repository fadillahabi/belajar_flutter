import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_16/database/db_helper.dart';
import 'package:ppkd_flutter/meet_16/register_screen.dart';

class LoginScreenApp extends StatefulWidget {
  const LoginScreenApp({super.key});
  static const String id = "/login_screen_app";

  @override
  State<LoginScreenApp> createState() => _LoginScreenAppState();
}

class _LoginScreenAppState extends State<LoginScreenApp> {
  final TextEditingController emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00224F),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color(0xff00224F),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                const Text(
                  "Hello Welcome Back",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 92, vertical: 8),
                  child: Text(
                    "Welcome back please sign in again",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0x40ffffff),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 56),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xffC4C4C4),
                    ),
                    hintText: "Email",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: const Color(0xff00224F),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff12325D),
                        width: 1,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff12325D),
                        width: 1,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {},
                  obscuringCharacter: "*",
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xffC4C4C4),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: const Color(0xff00224F),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff12325D),
                        width: 1,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff12325D),
                        width: 1,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xff00224F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    onPressed: () async {
                      final userData = await DbHelper.login(
                        emailController.text,
                        passwordController.text,
                      );
                      if (userData != null) {
                        print('data ada ${userData.toJson()}');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Login successful"),
                            backgroundColor: Colors.green,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Email atau password salah"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
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
                const SizedBox(height: 40),
                Row(
                  children: const [
                    Expanded(child: Divider(color: Color(0xff12325E))),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("or", style: TextStyle(color: Colors.white)),
                    ),
                    Expanded(child: Divider(color: Color(0xff12325E))),
                  ],
                ),
                const SizedBox(height: 23),

                // Facebook Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.facebook_rounded,
                      size: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: const Text('Facebook'),
                    onPressed: () {
                      print("Login Facebook");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff11325C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Gmail Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    icon: Image.asset(
                      "assets/images/iconGoogle.png",
                      width: 18,
                      height: 18,
                    ),
                    label: const Text('Gmail'),
                    onPressed: () {
                      print("Login Google Mail");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff11325C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    text: "Already have an account ?",
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: "  Sign In",
                        style: TextStyle(
                          color: Color(0xff3C7EEE),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, RegisterScreen.id);
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
