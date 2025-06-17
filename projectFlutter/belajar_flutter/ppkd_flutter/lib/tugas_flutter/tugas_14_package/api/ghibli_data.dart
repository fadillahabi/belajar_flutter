import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_flutter/tugas_flutter/tugas_14_package/models/data_api_model.dart';

Future<List<DataGhibli>> fetchUsers() async {
  final response = await http.get(
    Uri.parse('https://ghibliapi.vercel.app/films'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => DataGhibli.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
