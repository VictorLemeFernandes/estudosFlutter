import 'package:exemplo005/controllers/posts_controller.dart';
import 'package:exemplo005/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                //Substituto do setState (ñ reinicializa tudo toda hora)
                animation: Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(_controller.posts.value[idx].title),
                        ),
                      ),
              ),

              const SizedBox(
                height: 10,
              ), //Cria o espaço de altura

              CustomButtonWidget(
                disableButton: false,
                onPressed: () {
                  _controller.callAPI();
                },
                title: 'Custom BTN',
                titleSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
