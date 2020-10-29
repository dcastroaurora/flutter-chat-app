import '../../pages/register/widgets/register_form.dart';
import '../../pages/register/widgets/register_labels.dart';
import '../../pages/register/widgets/register_logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
                RegisterLogo(),
                RegisterForm(),
                Spacer(),
                RegisterLabels(
                  route: 'login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
