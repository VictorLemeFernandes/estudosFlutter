import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            // ignore: avoid_print
            Navigator.of(context).pushNamed('/twoPage', arguments: 'TESTE').then((value) => print(value)); //Empilhando a secondPage
          }),
          child: const Text('Ir para segunda página'),
        ),
      ),
    );
  }
}
