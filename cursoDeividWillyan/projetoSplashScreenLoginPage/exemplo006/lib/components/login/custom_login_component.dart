import 'package:exemplo006/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login failed!'),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                });
              },
              child: const Text('Login')),
    );
  }
}
