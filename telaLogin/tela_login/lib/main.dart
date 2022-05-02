import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    //Style do botao de login
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.yellow,
      onPrimary: Colors.black,
      
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Login'),
        foregroundColor: Colors.black,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              const Center(
                child: Icon(
                  Icons.flash_on,
                  size: 80,
                  color: Colors.yellow,
                  
                ),
              ),

              //TextField do e-mail
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
              ),

              //TextField do password
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true, //Faz a senha ficar oculta
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),

              //Botoes de login e sign up
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    //Botao de login
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                      style: style,
                    ),

                    //Botao de sign up
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign up'),
                      style: style,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
