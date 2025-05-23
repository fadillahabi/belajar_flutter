import 'package:flutter/material.dart';

class MeetTigaC extends StatelessWidget {
  const MeetTigaC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Lifebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.message_sharp, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/jokowi.jpg"),

                  // child: Image.asset("assets/images/jokowi.jpg"),
                ),
                title: Text("Nama User"),
                trailing: Icon(Icons.more_vert),
              ),
              Image.asset(
                "assets/images/meme1.jpg",
                // height: 100,
                width: double.infinity,
              ),
              ListTile(leading: Icon(Icons.favorite)),
            ],
          );
          // buildListUser();

          // Text(
          //   "data ke-$index",
          //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // );
        },
      ),
    );
  }
}
