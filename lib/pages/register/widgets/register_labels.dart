import 'package:flutter/material.dart';

class RegisterLabels extends StatelessWidget {
  final String route;

  const RegisterLabels({Key key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Do you already have an account?',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          GestureDetector(
            child: Text(
              'Log In!',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.route);
            },
          ),
          SizedBox(height: 50.0),
          Text('Terms and conditions of use')
        ],
      ),
    );
  }
}
