import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://192.168.0.111:5000/api"; 
  // use 10.0.2.2 for Android emulator, localhost for web

  static Future<Map<String, dynamic>> login(String email, String password, String role) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
        "role": role,
      }),
    );
    return jsonDecode(response.body);
  }

  static Future<Map<String, dynamic>> signup(String name, String email, String password, String role) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/signup"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "name": name,
        "email": email,
        "password": password,
        "role": role,
      }),
    );
    return jsonDecode(response.body);
  }
}
