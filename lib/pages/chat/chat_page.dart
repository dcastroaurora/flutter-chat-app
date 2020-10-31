import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_message.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isWriting = false;

  List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Column(
          children: [
            CircleAvatar(
              child: Text(
                'Di',
                style: TextStyle(fontSize: 12.0),
              ),
              backgroundColor: Colors.blue[100],
              maxRadius: 15.0,
            ),
            SizedBox(height: 3.0),
            Text(
              'Diego Castro',
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
                  setState(() {
                    if (value.trim().length > 0) {
                      _isWriting = true;
                    } else {
                      _isWriting = false;
                    }
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enviar Mensaje',
                  border: InputBorder.none,
                ),
                focusNode: _focusNode,
              ),
            ),
            Container(
              child: Platform.isIOS
                  ? CupertinoButton(
                      child: Text('Enviar'),
                      onPressed: _isWriting
                          ? () => _handleSubmit(_textController.text)
                          : null,
                    )
                  : Container(
                      child: IconTheme(
                        data: IconThemeData(color: Colors.blue[400]),
                        child: IconButton(
                          icon: Icon(Icons.send),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onPressed: _isWriting
                              ? () => _handleSubmit(_textController.text)
                              : null,
                        ),
                      ),
                    ),
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

    final newMessage = ChatMessage(
      uid: '123',
      text: text,
      animationController: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
      ),
    );

    _messages.insert(0, newMessage);

    newMessage.animationController.forward();

    setState(() {
      _isWriting = false;
    });
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
