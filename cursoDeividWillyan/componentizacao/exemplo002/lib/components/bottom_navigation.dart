import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;
  const CustomNavigationBar({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexBottomNavigationBar,
      onTap: (int page) {
        setState(() {
          indexBottomNavigationBar = page;
        });
        if (widget.onTap != null) {
          widget.onTap!(page);
          // objeto?.metodo()
          // objeto?.metodo() ?? () {}
          // objeto!.metodo()
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Item 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Item 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Item 3',
        ),
      ],
    );
  }
}
