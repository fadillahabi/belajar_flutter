import 'package:flutter/material.dart';

class MeetSatu extends StatelessWidget {
  const MeetSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("PPKD Jakarta Pusat"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Pertemuan 1"),
            Text("PPKD"),
            Text("Kelas Mobile Programming"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Toko ELektronik")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Televisi")],
            ),
            Text("Speaker"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Komputer")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Kulkas")],
            ),
            Text("Oven"),
            Row(
              children: [
                Text("Televisi"),
                Text("Speaker"),
                Text("Komputer"),
                Text("Kulkas"),
                Text("Oven"),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100], // Changed background color to white
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Pertemuan 1", style: TextStyle(fontSize: 24),),
          Text("PPKD"),
          Text("Kelas Mobile Programming"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("Toko ELektronik")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Televisi")],
          ),
          Text("Speaker"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("Komputer")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Kulkas")],
          ),
          Text("Oven"),
          Row(
            children: [
              Text("Televisi"),
              Text("Speaker"),
              Text("Komputer"),
              Text("Kulkas"),
              Text("Oven"),
            ],
          ),
        ],
      ), // body: ,
    );
  }
}
