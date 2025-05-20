import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          "Profil Lengkap",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage("assets/images/catmuscle.png"),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Fadillah Abi Prayogo",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.lightGreen[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 15),
                  Text(
                    'fadillahabiprayogo@email.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.phone, color: Colors.green),
                Spacer(),
                Text("+62 877-7548-7205", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("Postingan", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("Followers", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              "I am a Junior Mobile Developer with a strong interest in building mobile applications for both Android and iOS platforms. I have experience using Flutter and Dart to create responsive and user-friendly interfaces. I understand key concepts such as state management, REST API integration, and backend connectivity. I am a fast learner, enjoy working in a team environment, and am committed to meeting deadlines. With a growth mindset and strong curiosity, I am eager to contribute to creating impactful digital solutions.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
          SizedBox(height: 148),
          Expanded(
            child: Container(

              color: Colors.grey[400],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("© 2025 Fadillah Abi Prayogo — Built with Flutter & ❤️.", style: TextStyle(fontSize: 14)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
