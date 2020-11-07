import 'dart:convert';

import '../global/environment.dart';
import '../models/message/message.dart';
import '../models/user/user.dart';
import '../services/auth_services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MessageService with ChangeNotifier {
  User userTo;
  bool _writing = false;

  bool get writing => this._writing;

  set writing(bool value) {
    this._writing = value;
    notifyListeners();
  }

  Future<List<Message>> getMessagesChat(String fromUid) async {
    try {
      final token = await AuthService.getToken();

      final response =
          await http.get('${Environment.apiUrl}/message/$fromUid', headers: {
        'x-token': token,
        'Content-Type': 'application/json',
      });

      final messageResponse =
          MessageResponse.fromJson(jsonDecode(response.body));

      return messageResponse.messages;
    } catch (e) {
      return [];
    }
  }
}
