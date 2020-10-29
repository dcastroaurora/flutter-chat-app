import 'package:flutter/material.dart';

class LoginLabels extends StatelessWidget {
  final String route;

  const LoginLabels({Key key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'You don\'t have an account?',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          GestureDetector(
            child: Text(
              'Create one now!',
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
