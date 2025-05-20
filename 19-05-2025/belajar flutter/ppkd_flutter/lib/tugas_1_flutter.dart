import 'package:flutter/material.dart';

class Tugas1Flutter extends StatelessWidget {
  const Tugas1Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: [
            FlutterLogo(size: 35),
            SizedBox(width: 8),
            Text(
              "My Profil",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35, 
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, size: 50, color: Colors.grey[700]),
                ),
                SizedBox(width: 16),
                Text(
                  "Fadillah Abi Prayogo",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on, size: 24, color: Colors.red),
                Text(
                  "Lubang Buaya, Jakarta Timur",
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              "I am a Junior Mobile Developer with a strong interest in building mobile applications for both Android and iOS platforms. I have experience using Flutter and Dart to create responsive and user-friendly interfaces. I understand key concepts such as state management, REST API integration, and backend connectivity. I am a fast learner, enjoy working in a team environment, and am committed to meeting deadlines. With a growth mindset and strong curiosity, I am eager to contribute to creating impactful digital solutions.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
