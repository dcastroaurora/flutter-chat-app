import 'dart:io';

import 'package:chat/services/auth_services.dart';
import 'package:chat/services/socket_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/message_services.dart';

import 'widgets/chat_message.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  List<ChatMessage> _messages = [];
  MessageService messageService;
  SocketService socketService;
  AuthService authService;

  @override
  void initState() {
    super.initState();
    this.messageService = context.read<MessageService>();
    this.socketService = context.read<SocketService>();
    this.authService = context.read<AuthService>();

    this.socketService.socket.on('personal-message', _listenMessage);
    this._loadHistory(this.messageService.userTo.uid);
  }

  void _loadHistory(String uid) async {
    final messageHistory = await this.messageService.getMessagesChat(uid);

    messageHistory.forEach((message) {
      ChatMessage newMessage = ChatMessage(
        uid: message.from,
        text: message.message,
        animationController: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 200),
        )..forward(),
      );
      _messages.insert(0, newMessage);
      // newMessage.animationController.forward();
    });
    setState(() {});
  }

  void _listenMessage(dynamic payload) {
    print(payload);
    ChatMessage newMessage = ChatMessage(
      uid: payload['from'],
      text: payload['message'],
      animationController: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
      ),
    );
    _messages.insert(0, newMessage);
    newMessage.animationController.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('vvbbbb');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1.0,
        title: Column(
          children: [
            CircleAvatar(
              child: Text(
                this.messageService.userTo.name.substring(0, 2),
                style: TextStyle(fontSize: 12.0),
              ),
              backgroundColor: Colors.blue[100],
              maxRadius: 15.0,
            ),
            SizedBox(height: 3.0),
            Text(
              this.messageService.userTo.name,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12.0,
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: _messages.length,
                itemBuilder: (_, i) => _messages[i],
                reverse: true,
              ),
            ),
            Divider(height: 1.0),
            Container(
              color: Colors.white,
              child: _inputChat(),
            )
          ],
        ),
      ),
    );
  }

  Widget _inputChat() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmit,
                onChanged: (value) {
                  if (value.trim().length > 0) {
                    this.messageService.writing = true;
                  } else {
                    this.messageService.writing = false;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enviar Mensaje',
                  border: InputBorder.none,
                ),
                focusNode: _focusNode,
              ),
            ),
            Selector<MessageService, bool>(
              selector: (_, messageService) => messageService.writing,
              builder: (_, writing, __) {
                return Container(
                  child: Platform.isIOS
                      ? CupertinoButton(
                          child: Text('Enviar'),
                          onPressed: writing
                              ? () => _handleSubmit(_textController.text)
                              : null,
                        )
                      : IconTheme(
                          data: IconThemeData(color: Colors.blue[400]),
                          child: IconButton(
                            icon: Icon(Icons.send),
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onPressed: writing
                                ? () => _handleSubmit(_textController.text)
                                : null,
                          ),
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  _handleSubmit(String text) {
    if (text.length == 0) return;

    _textController.clear();
    _focusNode.requestFocus();

    ChatMessage newMessage = ChatMessage(
      uid: this.authService.user.uid,
      text: text,
      animationController: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
      ),
    );

    _messages.insert(0, newMessage);

    newMessage.animationController.forward();
    context.read<MessageService>().writing = false;
    setState(() {});

    this.socketService.socket.emit('personal-message', {
      'from': this.authService.user.uid,
      'to': this.messageService.userTo.uid,
      'message': text,
    });
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    this.socketService.socket.off('personal-message');
    super.dispose();
  }
}
