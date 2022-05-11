import 'dart:math';

import 'package:exemplo005/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value= Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder( //Substituto do setState (ñ reinicializa tudo toda hora)
              valueListenable: valorAleatorio,
              builder: (_, valor, __) => Text(
                'Valor é: $valor',
                style: const TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 10,), //Cria o espaço de altura

            CustomButtonWidget(
              disableButton: false,
              onPressed: () {
                random();
              },
              title: 'Custom BTN',
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
