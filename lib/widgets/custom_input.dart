import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String text;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final bool isPassword;

  const CustomInput({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.textEditingController,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 2.0,
        right: 20.0,
        bottom: 2.0,
        left: 5.0,
      ),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            offset: Offset(1.0, 5.0),
            blurRadius: 2.0,
          )
        ],
      ),
      child: TextField(
        autocorrect: false,
        keyboardType: this.textInputType,
        controller: this.textEditingController,
        obscureText: this.isPassword,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          prefixIcon: Icon(this.icon),
          hintText: this.text,
        ),
      ),
    );
  }
}
