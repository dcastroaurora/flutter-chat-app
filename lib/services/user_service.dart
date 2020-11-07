import 'dart:convert';

import 'package:chat/global/environment.dart';
import 'package:chat/services/auth_services.dart';

import '../models/user/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<List<User>> getUsers() async {
    try {
      final token = await AuthService.getToken();

      final response = await http.get('${Environment.apiUrl}/user', headers: {
        'x-token': token,
        'Content-Type': 'application/json',
      });

      final userResponse = UserResponse.fromJson(jsonDecode(response.body));

      return userResponse.users;
    } catch (e) {
      return [];
    }
  }
}
