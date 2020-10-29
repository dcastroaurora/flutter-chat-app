import 'package:flutter/material.dart';

import 'widgets/login_form.dart';
import 'widgets/login_labels.dart';
import 'widgets/login_logo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 60.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                LoginLogo(),
                LoginForm(),
                Spacer(),
                LoginLabels(
                  route: 'register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
