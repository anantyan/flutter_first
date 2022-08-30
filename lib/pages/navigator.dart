
import 'package:flutter/material.dart';
import 'package:flutter_first/pages/list/list.dart';

import '../common/toast.dart';
import 'home/home.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> {
  late int _currentItem = 0;
  final _pages = [
    const Home(),
    const RandomWords(),
    Container(
      color: Colors.cyan,
      child: const Center(
        child: Text("Hello world!"),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Item"),
      ),
      body: Center(
        child: _pages[_currentItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _currentItem,
        onTap: (int i) {
          setState(() {
            _currentItem = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: "List"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined),
              label: "Card"
          )
        ],
      ),
    );
  }
}