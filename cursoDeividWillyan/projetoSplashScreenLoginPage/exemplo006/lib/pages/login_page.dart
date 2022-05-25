import 'package:exemplo006/components/login/custom_login_component.dart';
import 'package:exemplo006/controllers/login_controller.dart';
import 'package:exemplo006/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'Login'
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setPassword,
              label: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomLoginButtonComponent(loginController: _controller),
            // CheckboxListTile(value: 
            // true, onChanged: )
          ],
        ),
      ),
    );
  }
}
