import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/api/endpoint.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/models/get_profile.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/models/login_response.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/models/register_error_response.dart';
import 'package:ppkd_flutter/tugas_flutter/tugas_15_package/models/register_response.dart';

class UserService {
  Future<Map<String, dynamic>> registerUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.register),
      headers: {"Accept": "application/json"},
      body: {"name": name, "email": email, "password": password},
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(registerResponseFromJson(response.body).toJson());
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorResponseFromJson(response.body).toJson();
    } else {
      print("Failed to register user: ${response.statusCode}");
      throw Exception("Failed to register user: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.login),
      headers: {"Accept": "application/json"},
      body: {"email": email, "password": password},
    );

    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return LoginResponse.fromJson(jsonData).toJson();
    } else {
      final jsonData = json.decode(response.body);
      return {"message": jsonData["message"], "data": null};
    }
  }

  Future<UserData> getProfile({required String token}) async {
    final response = await http.get(
      Uri.parse(Endpoint.profile),
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token", // Token dari login
      },
    );

    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      return getProfileFromJson(response.body);
    } else {
      throw Exception("Failed to fetch profile data: ${response.statusCode}");
    }
  }
}
