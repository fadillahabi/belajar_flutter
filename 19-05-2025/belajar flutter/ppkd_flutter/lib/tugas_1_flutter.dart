import 'package:flutter/material.dart';

class Tugas1Flutter extends StatelessWidget {
  const Tugas1Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("My Profil")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Fadillah Abi Prayogo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Jakarta Timur",
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          ),
          Text("I am a Junior Mobile Developer with a strong interest in building mobile applications for both Android and iOS platforms. I have experience using Flutter and Dart to create responsive and user-friendly interfaces. I understand key concepts such as state management, REST API integration, and backend connectivity. I am a fast learner, enjoy working in a team environment, and am committed to meeting deadlines. With a growth mindset and strong curiosity, I am eager to contribute to creating impactful digital solutions.")
        ],
      ),
    );
  }
}
