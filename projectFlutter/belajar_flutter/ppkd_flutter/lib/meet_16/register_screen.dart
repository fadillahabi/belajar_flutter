import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_16/database/db_helper.dart';
import 'package:ppkd_flutter/meet_16/model/user_model.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String id = "/register_screen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isVisibility = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
          "Register",
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
                  "Start Your Gaming Adventure",
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
                    "Sign up to top-up your favorite games",
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
                  style: TextStyle(color: Colors.white),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xffC4C4C4),
                    ),
                    hintText: "Name",
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
                  style: TextStyle(color: Colors.white),
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.account_circle,
                      color: Color(0xffC4C4C4),
                    ),
                    hintText: "Username",
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
                  style: TextStyle(color: Colors.white),
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter some text";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xffC4C4C4),
                    ),
                    hintText: "Phone Number",
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${emailController.text}");
                        print("Name: ${nameController.text}");
                        print("Username: ${usernameController.text}");
                        print("Phone: ${phoneController.text}");
                        print("Password: ${passwordController.text}");
                        DbHelper.registerUser(
                          data: UserModel(
                            email: emailController.text,
                            name: nameController.text,
                            username: usernameController.text,
                            phone: phoneController.text,
                            password: passwordController.text,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Registration Succesfull"),
                            backgroundColor: Colors.green,
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Register',
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
                // const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
