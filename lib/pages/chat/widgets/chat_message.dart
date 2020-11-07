import 'package:chat/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String uid;
  final AnimationController animationController;

  const ChatMessage({
    Key key,
    @required this.text,
    @required this.uid,
    @required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userUid = context.watch<AuthService>().user.uid;
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut,
        ),
        child: Container(
          child: this.uid == userUid ? _myMessage() : _notMyMessage(),
        ),
      ),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(
          bottom: 5.0,
          right: 5.0,
          left: 50.0,
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xff4D9EF6),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }

  Widget _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(
          bottom: 5.0,
          right: 50.0,
          left: 5.0,
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
