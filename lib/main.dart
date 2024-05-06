import 'package:firstflutterapp/NaviagtorBar.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/page/home.dart';
import 'package:firstflutterapp/page/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _OntappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    const HomePage(),
    const SecondRoute(),
    const HomePage(),
    const NavigatorDrawer()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow[700],
          title: const Text(
            'Flutter App',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: const HomePage(),
        // _pages.elementAt(_selectedIndex),
        drawer: const NavigatorDrawer(),

        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home,
        //         size: 30,
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.shopping_cart_rounded,
        //         size: 30,
        //       ),
        //       label: 'Shop',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.message,
        //         size: 30,
        //       ),
        //       label: 'Message',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.menu,
        //         size: 30,
        //       ),
        //       label: 'Menu',
        //     ),
        //   ],
        //   currentIndex: _selectedIndex,
        //   onTap: _OntappedItem,
        //   selectedItemColor: Colors.yellow[700],
        //   unselectedItemColor: Colors.grey,
        //   showUnselectedLabels: true,
        // )
      ),
    );
  }
}
