import 'package:exemplo002/components/bottom_navigation.dart';
import 'package:exemplo002/pages/page_views/one_page.dart';
import 'package:exemplo002/pages/page_views/three_page.dart';
import 'package:exemplo002/pages/page_views/two_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Teste1'),
              accountEmail: Text('Teste2'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 70, 204, 139),
                child: Text('T'),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  
                });
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  
                });
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          OnePage(), //Primeira pagina
          TwoPage(), //Segunda pagina
          ThreePage(), //Terceira pagina
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (int page) {
          _pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
