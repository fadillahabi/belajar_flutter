import 'package:flutter/material.dart';
import 'package:ppkd_flutter/tugas_2_flutter.dart';

class TugasEmpatFlutter extends StatelessWidget {
  const TugasEmpatFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namaController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController noHpController = TextEditingController();
    final TextEditingController deskripsiController = TextEditingController();
    final List<Map<String, String>> items = [
      {
        "title": "5(5+0) Diamonds",
        "price": "Rp 1.539",
        "image": "assets/images/diamond.png",
      },
      {
        "title": "10(9+1) Diamonds",
        "price": "Rp 3.120",
        "image": "assets/images/diamond.png",
      },
      {
        "title": "14(13+1) Diamonds",
        "price": "Rp 3.590",
        "image": "assets/images/diamond.png",
      },
      {
        "title": "17(16+1) Diamonds",
        "price": "Rp 5.128",
        "image": "assets/images/diamond.png",
      },
      {
        "title": "50(46+4) Diamonds",
        "price": "Rp 14.556",
        "image": "assets/images/diamond.png",
      },
      {
        "title": "20100(17080+3020) Diamonds",
        "price": "Rp 5.116.333",
        "image": "assets/images/diamond.png",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0x80222831),
      appBar: AppBar(
        backgroundColor: const Color(0xff222831),
        centerTitle: true,
        toolbarHeight: 60,
        leading: IconButton(
          padding: EdgeInsets.only(left: 12),
          icon: Image.asset("assets/images/logo.png"),
          iconSize: 300,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Image.asset('assets/images/flag_id.png', width: 24, height: 24),
                const SizedBox(width: 4),
                const Text('ID / IDR', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xff393E46),
                borderRadius: BorderRadius.circular(16),
                // boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(0.5),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xff948979),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "Transaksi",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(0.5),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TugasDuaFlutter(),
                              ),
                            );
                          },
                          child: Text(
                            "Keterangan",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff393E46),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1)],
              ),
              child: Column(
                children: [
                  TextField(
                    controller: namaController,
                    keyboardType: TextInputType.name,
                    onChanged: (value) {
                      debugPrint("Nama: $value");
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan ID / Nama",
                      hintStyle: const TextStyle(fontSize: 16),
                      filled: true,
                      fillColor: const Color(0xffDFD0B8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 12),

                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      debugPrint("Email: $value");
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Email",
                      hintStyle: const TextStyle(fontSize: 16),
                      filled: true,
                      fillColor: const Color(0xffDFD0B8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 12),

                  TextField(
                    controller: noHpController,
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      debugPrint("No. HP: $value");
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan No. HP",
                      hintStyle: const TextStyle(fontSize: 16),
                      filled: true,
                      fillColor: const Color(0xffDFD0B8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(height: 12),

                  TextField(
                    controller: deskripsiController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    onChanged: (value) {
                      debugPrint("Deskripsi: $value");
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Deskripsi",
                      hintStyle: const TextStyle(fontSize: 16),
                      filled: true,
                      fillColor: const Color(0xffDFD0B8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xffD2D0A0),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color(0xff6a9c89),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff948979),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        debugPrint("Submit ditekan!");
                        debugPrint("Nama: ${namaController.text}");
                        debugPrint("Email: ${emailController.text}");
                        debugPrint("No. HP: ${noHpController.text}");
                        debugPrint("Deskripsi: ${deskripsiController.text}");
                      },
                      child: const Text(
                        'Pesan Sekarang!',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    "Pilih Paket Diamond",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),

                  ...items.map((item) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xff393E46),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade700,
                            blurRadius: 2,
                            offset: const Offset(1, 2),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(item["image"]!),
                          backgroundColor: Colors.transparent,
                        ),
                        title: Text(
                          item["title"]!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          item["price"]!,
                          style: const TextStyle(color: Colors.white70),
                        ),
                        onTap: () {
                          debugPrint("Dipilih: ${item["title"]}");
                        },
                      ),
                    );
                  }),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
