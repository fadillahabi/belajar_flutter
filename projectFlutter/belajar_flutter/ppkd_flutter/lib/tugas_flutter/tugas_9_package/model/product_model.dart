import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  // final String id;
  final String? productName;
  final String? productDescription;
  final String? productImage;
  ProductModel({
    // required this.id,
    this.productName,
    this.productDescription,
    this.productImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'id': id,
      'productName': productName,
      'productDescription': productDescription,
      'productImage': productImage,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      // id: map['id'] as String,
      productName:
          map['productName'] != null ? map['productName'] as String : null,
      productDescription:
          map['productDescription'] != null
              ? map['productDescription'] as String
              : null,
      productImage:
          map['productImage'] != null ? map['productImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
