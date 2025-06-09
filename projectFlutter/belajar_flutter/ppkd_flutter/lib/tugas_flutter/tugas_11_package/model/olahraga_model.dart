import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OlahragaModel {
  final int? id;
  final String nama;
  final int umur;
  final String kota;
  final String jenisOlahraga;
  final String durasiKegiatan;
  final String frekuensiLatihan;
  final String? prestasi;
  OlahragaModel({
    this.id,
    required this.nama,
    required this.umur,
    required this.kota,
    required this.jenisOlahraga,
    required this.durasiKegiatan,
    required this.frekuensiLatihan,
    this.prestasi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'umur': umur,
      'kota': kota,
      'jenisOlahraga': jenisOlahraga,
      'durasiKegiatan': durasiKegiatan,
      'frekuensiLatihan': frekuensiLatihan,
      'prestasi': prestasi,
    };
  }

  factory OlahragaModel.fromMap(Map<String, dynamic> map) {
    return OlahragaModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      umur: map['umur'] as int,
      kota: map['kota'] as String,
      jenisOlahraga: map['jenisOlahraga'] as String,
      durasiKegiatan: map['durasiKegiatan'] as String,
      frekuensiLatihan: map['frekuensiLatihan'] as String,
      prestasi: map['prestasi'] != null ? map['prestasi'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OlahragaModel.fromJson(String source) =>
      OlahragaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
