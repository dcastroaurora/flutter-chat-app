import 'dart:convert';

import 'package:chat/global/environment.dart';
import 'package:chat/models/login/login_response.dart';
import 'package:chat/models/user/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  User user;
  bool _loading = false;
  final _storage = FlutterSecureStorage();
  // String _aaa = 'dd';

  bool get loading => this._loading;

  set loading(bool value) {
    this._loading = value;
    notifyListeners();
  }

  // String get abc => this._aaa;

  // set abc(String value) {
  //   this._aaa = value;
  //   notifyListeners();
  // }

  // void xxx(String email, String password) {
  //   this.abc = 'xxx';
  // }

  Future<LoginResponse> login(String email, String password) async {
    this.loading = true;

    final data = {'email': email, 'password': password};

    final resp = await http.post(
      '${Environment.apiUrl}/login',
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    this.loading = false;

    final loginResponse = LoginResponse.fromJson(json.decode(resp.body));

    if (resp.statusCode == 200) {
      this.user = loginResponse.user;
      await this._saveToken(loginResponse.token);
      return loginResponse;
    } else {
      return loginResponse;
    }
  }

  Future<void> _saveToken(String token) async {
    return await _storage.write(key: 'token', value: token);
  }

  Future<void> _logout() async {
    return await _storage.delete(key: 'token');
  }

  static Future<String> getToken() async {
    final _storage = FlutterSecureStorage();
    return await _storage.read(key: 'token');
  }

  static Future<void> deleteToken() async {
    final _storage = FlutterSecureStorage();
    return await _storage.delete(key: 'token');
  }

  Future<LoginResponse> register(
      String name, String email, String password) async {
    this.loading = true;
    final data = {'name': name, 'email': email, 'password': password};

    final resp = await http.post(
      '${Environment.apiUrl}/login/new',
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    this.loading = false;

    final registerResponse = LoginResponse.fromJson(jsonDecode(resp.body));

    if (resp.statusCode == 200) {
      this.user = registerResponse.user;
      await this._saveToken(registerResponse.token);
      return registerResponse;
    } else {
      return registerResponse;
    }
  }

  Future<LoginResponse> isLoggedIn() async {
    final token = await this._storage.read(key: 'token');

    final response = await http.get(
      '${Environment.apiUrl}/login/renew',
      headers: {
        'Content-Type': 'application/json',
        'x-token': token,
      },
    );

    final renewResponse = LoginResponse.fromJson(jsonDecode(response.body));

    if (response.statusCode == 200) {
      this.user = renewResponse.user;
      await this._saveToken(renewResponse.token);
      return renewResponse;
    } else {
      this._logout();
      return renewResponse;
    }
  }
}
