import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_12/meet_12a.dart';

class TugasDuaFlutter extends StatelessWidget {
  const TugasDuaFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text('Profil Lengkap'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Meet12AInputWidget()),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 110,
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [Colors.cyan, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/catmuscle.png"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.blue),
                        SizedBox(width: 16),
                        Text(
                          'fadillahabiprayogo@email.com',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        Spacer(),
                        Text(
                          "+62 877-7548-7205",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Postingan",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Followers",
                            style: TextStyle(fontSize: 18, color: Colors.white),
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
                    "I am a Junior Mobile Programmer currently undergoing training to enhance my skills in developing mobile applications for Android and iOS. I am passionate about learning the latest technologies, improving my understanding of UI/UX design, and mastering frameworks such as Flutter and React Native to build responsive and user-friendly apps.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 100),
          Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Expanded(
            child: Container(
              color: Colors.lightGreen,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "© 2025 Fadillah Abi Prayogo — Built with Flutter & ❤️",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
