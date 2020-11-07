import 'package:chat/global/environment.dart';
import 'package:chat/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

enum ServerStatus {
  Online,
  Offline,
  Connecting,
}

class SocketService with ChangeNotifier {
  ServerStatus _serverStatus = ServerStatus.Connecting;
  IO.Socket _socket;

  ServerStatus get serverStatus => _serverStatus;
  IO.Socket get socket => _socket;

  void connect() async {
    final token = await AuthService.getToken();

    this._socket = IO.io(Environment.socketUrl, {
      'transports': ['websocket'],
      'autoConnect': true,
      'forceNew': true,
      'extraHeaders': {'x-token': token}
    });

    this._socket.on('connect', (_) {
      print('flutter-connected');
      this._serverStatus = ServerStatus.Online;
      notifyListeners();
    });

    this._socket.on('disconnect', (_) {
      print('flutter-disconnected');
      this._serverStatus = ServerStatus.Offline;
      notifyListeners();
    });
  }

  void disconnect() {
    this._socket.disconnect();
  }
}
