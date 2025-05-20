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
          Text("Pertemuan 1", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          Text("PPKD", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
          Text(
            "Kelas Mobile Programming",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Nama Toko",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.blue[800],
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Toko Saya bernama",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: " @alabiban_store",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[800],
                  ),
                ),
                TextSpan(
                  text: " beralamat di Pintu 2 TMII",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("Ban Slick")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Ban Off Road")],
          ),
          Text("Speaker"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("Ban Sport")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Ban Touring")],
          ),
          Text("Ban All Season"),
          Row(
            children: [
              Text("IRC, Aspira, FDR, Swallow, Dunlop",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),  
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("Gambar 4 Gambar 5")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Gambar 5")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Gambar 6")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.email),
              Icon(Icons.email, color: Colors.blue),
              Icon(Icons.email, size: 50),
              Text(
                "Email:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
          ),],)
        ],
      ), // body: ,
    );
  }
}
