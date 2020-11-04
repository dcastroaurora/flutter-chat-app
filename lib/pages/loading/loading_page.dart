import '../../pages/login/login_page.dart';
import '../../pages/user/user_page.dart';

import '../../services/auth_services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: checkLoginState(context),
        // initialData: InitialData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: Text('Autenticando'),
          );
        },
      ),
    );
  }

  Future checkLoginState(BuildContext context) async {
    final authenticated = await context.watch<AuthService>().isLoggedIn();

    if (authenticated.ok) {
      // Navigator.pushReplacementNamed(context, 'users');
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => UserPage(),
          transitionDuration: Duration(milliseconds: 0),
        ),
      );
    } else {
      // Navigator.pushReplacementNamed(context, 'login');
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => LoginPage(),
          transitionDuration: Duration(milliseconds: 0),
        ),
      );
    }
  }
}
