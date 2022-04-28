import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final list = <String>[]; //Criação da lista vazia q armazenara os nomes
  final controller = TextEditingController(); //Controla o q esta sendo digitado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Lista de nomes'),
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
                8.0), //Padding descola o input das laterais
            child: Row(
              children: [
                //Expanded coloca o tamanho do input o maximo que der
                Expanded(
                    child: TextField(
                  controller: controller,
                )), //Cria a caixa de input
                IconButton(
                    onPressed: () {
                      final text = controller.text;
                      setState(() {
                        list.add(text); //Adiciona cada nome digitado a lista
                      });
                      controller.clear(); //Assim que clica no + o nome que foi digitado eh apagado do input
                    },
                    icon: const Icon(Icons.add)) //Define o icon de +
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length, //A quantidade de itens
                itemBuilder: ((context, index) {
                  //Armazena os itens na lista e mostram os mesmos na tela
                  final item = list[index];

                  return ListTile(
                    title: Text(item),
                  );
                })),
          )
        ],
      ),
    );
  }
}
