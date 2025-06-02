import 'package:flutter/material.dart';
import 'package:ppkd_flutter/meet_11/constant/app_color.dart';
import 'package:ppkd_flutter/meet_11/constant/app_images.dart';
import 'package:ppkd_flutter/tugas_9_model/model/product_model.dart';

class ModelMakananRingan extends StatefulWidget {
  const ModelMakananRingan({super.key});

  @override
  State<ModelMakananRingan> createState() => _ModelMakananRinganState();
}

class _ModelMakananRinganState extends State<ModelMakananRingan> {
  final List<ProductModel> dataProduk = [
    ProductModel(
      // id: "1",
      productName: "Keripik Pisang",
      productDescription:
          "Makanan ringan yang populer di Indonesia, dengan berbagai rasa seperti cokelat, keju, dan green tea. ",
      productImage: AppImage.keripikPisang,
    ),
    ProductModel(
      // id: "2",
      productName: "Basreng",
      productDescription:
          "Bakso goreng yang menjadi makanan ringan populer, terutama dengan rasa pedas.",
      productImage: AppImage.basreng,
    ),
    ProductModel(
      // id: "3",
      productName: "Stik Talas",
      productDescription:
          "Stik berbahan dasar talas yang digoreng, sering dijadikan makanan ringan yang kekinian. ",
      productImage: AppImage.stikTalas,
    ),
    ProductModel(
      // id: "4",
      productName: "Mi Lidi",
      productDescription:
          "Mi yang digulung dan digoreng menjadi makanan ringan yang renyah.",
      productImage: AppImage.miLidi,
    ),
    ProductModel(
      // id: "5",
      productName: "Usus Goreng",
      productDescription:
          "Usus ayam yang digoreng, menjadi makanan ringan yang lezat dan unik. ",
      productImage: AppImage.ususGoreng,
    ),
    ProductModel(
      // id: "6",
      productName: "Telur Gulung",
      productDescription:
          "Telur yang digulung dan digoreng, dengan berbagai rasa seperti manis dan gurih.",
      productImage: AppImage.telurGoreng,
    ),
    ProductModel(
      // id: "7",
      productName: "Kue Nastar",
      productDescription:
          "Kue kering yang berisi selai nenas, sering dijadikan camilan saat Lebaran. ",
      productImage: AppImage.kueNastar,
    ),
    ProductModel(
      // id: "8",
      productName: "Kue Putri Salju",
      productDescription:
          "Kue kering yang renyah, sering dijadikan camilan saat Lebaran.",
      productImage: AppImage.kuePutriSalju,
    ),
    ProductModel(
      // id: "9",
      productName: "Popcorn Caramel",
      productDescription:
          "Popcorn yang diselimuti dengan lapisan karamel manis. ",
      productImage: AppImage.popcorn_caramel,
    ),
    ProductModel(
      // id: "10",
      productName: "Brownies Kering",
      productDescription: "Brownies yang digoreng menjadi renyah dan lezat.",
      productImage: AppImage.browKer,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blue12,
        title: Text(
          "Makanan Ringan yang Populer",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 72,
      ),
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (BuildContext context, int index) {
          final product = dataProduk[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
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
                backgroundImage: AssetImage(product.productImage ?? ""),
              ),
              title: Text(
                product.productName ?? "",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "==> ${product.productDescription}" ?? "",
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
// Keripik Pisang: Makanan ringan yang populer di Indonesia, dengan berbagai rasa seperti cokelat, keju, dan green tea. 
// Basreng: Bakso goreng yang menjadi makanan ringan populer, terutama dengan rasa pedas. 
// Stik Talas: Stik berbahan dasar talas yang digoreng, sering dijadikan makanan ringan yang kekinian. 
// Mi Lidi: Mi yang digulung dan digoreng menjadi makanan ringan yang renyah. 
// Usus Goreng: Usus ayam yang digoreng, menjadi makanan ringan yang lezat dan unik. 
// Telur Gulung: Telur yang digulung dan digoreng, dengan berbagai rasa seperti manis dan gurih. 
// Kue Nastar: Kue kering yang berisi selai nenas, sering dijadikan camilan saat Lebaran. 
// Kue Putri Salju: Kue kering yang renyah, sering dijadikan camilan saat Lebaran. 
// Popcorn Caramel: Popcorn yang diselimuti dengan lapisan karamel manis. 
// Brownies Kering: Brownies yang digoreng menjadi renyah dan lezat. 