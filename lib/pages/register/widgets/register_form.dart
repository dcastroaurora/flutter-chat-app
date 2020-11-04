import '../../../helpers/show_alert.dart';

import '../../../services/auth_services.dart';
import 'package:chat/widgets/custom_button.dart';
import 'package:provider/provider.dart';

import '../../../widgets/custom_input.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 60.0),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            text: 'Name',
            textEditingController: _nameController,
          ),
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
                text: 'Register',
                function: loading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();

                        final response =
                            await context.read<AuthService>().register(
                                  _nameController.text.trim(),
                                  _emailController.text.trim(),
                                  _passwordController.text.trim(),
                                );

                        if (response.ok) {
                          Navigator.pushReplacementNamed(context, 'users');
                        } else {
                          showAlert(
                            context,
                            'Incorrect Register',
                            response.message,
                          );
                        }
                      },
              );
            },
          )
        ],
      ),
    );
  }
}
