import 'package:chat/helpers/show_alert.dart';

import '../../../services/auth_services.dart';
import 'package:chat/widgets/custom_button.dart';

import '../../../widgets/custom_input.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 80.0),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            text: 'Email',
            textInputType: TextInputType.emailAddress,
            textEditingController: _emailController,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            text: 'Password',
            textEditingController: _passwordController,
            isPassword: true,
          ),
          Selector<AuthService, bool>(
            selector: (_, authService) => authService.loading,
            builder: (_, loading, __) {
              return CustomButton(
                color: Colors.blue[700],
                text: 'Log In',
                function: loading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();

                        final response =
                            await context.read<AuthService>().login(
                                  _emailController.text.trim(),
                                  _passwordController.text.trim(),
                                );

                        if (response.ok) {
                          Navigator.pushReplacementNamed(context, 'users');
                        } else {
                          showAlert(
                            context,
                            'Incorrect Login',
                            'Check your credentials',
                          );
                        }
                      },
              );
            },
          )
          // Consumer<AuthService>(
          //   builder: (_, authService, __) {
          //     return CustomButton(
          //       color: Colors.blue[700],
          //       text: 'Log In',
          //       function: authService.loading
          //           ? null
          //           : () {
          //               authService.login(
          //                 _emailController.text.trim(),
          //                 _passwordController.text.trim(),
          //               );
          //             },
          //     );
          //   },
          // ),
          // Text('helllooo ${context.watch<AuthService>().loading}'),// rebuild all
          //Text('helllooo ${Provider.of<AuthService>(context).loading}'), // rebuild all
          // Text(
          //   '(Escuchar correo electrónico) Correo electrónico: ${context.select<AuthService, bool>((modelo) => modelo.loading)}',
          // ), // rebuild all si entrara(es decir si cambiara el campo loading), caso contrario no reconstruiria ningun Widget en el BUILD

          //ERROR=> no se puede utilizar provider listen:true desde fuera del método 'BUILD', lo mismo con context.watch<T>
          // FlatButton(
          //   onPressed: () {
          //     Provider.of<AuthService>(context).login(
          //       _emailController.text.trim(),
          //       _passwordController.text.trim(),
          //     );
          //   },
          //   child: Text('Log In'),
          // ),
          // CustomButton(
          //   color: Colors.blue[700],
          //   text: 'Log In',
          //   function: () {
          //     context.read<AuthService>().login(
          //           _emailController.text.trim(),
          //           _passwordController.text.trim(),
          //         );
          //   },
          // ),
        ],
      ),
    );
  }
}
