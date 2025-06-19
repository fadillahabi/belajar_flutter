import 'package:flutter/material.dart';

class LoginScreenGhibli extends StatefulWidget {
  const LoginScreenGhibli({super.key});

  @override
  State<LoginScreenGhibli> createState() => _LoginScreenGhibliState();
}

class _LoginScreenGhibliState extends State<LoginScreenGhibli> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: "Password"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Sign In")),
        ],
      ),
    );
  }
}
