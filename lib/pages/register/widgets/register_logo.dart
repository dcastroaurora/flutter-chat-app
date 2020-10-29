import 'package:flutter/material.dart';

class RegisterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/tag-logo.png', width: 150.0),
            SizedBox(height: 20.0),
            Text('Register', style: TextStyle(fontSize: 30.0))
          ],
        ),
      ),
    );
  }
}
