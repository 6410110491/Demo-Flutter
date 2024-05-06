import 'package:firstflutterapp/main.dart';
import 'package:firstflutterapp/page/home.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/Card.dart';
import 'package:firstflutterapp/NaviagtorBar.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: const Text('Shop'),
      ),
      body: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: SearchBarApp()),
        CardPicture(
            "https://cdn.pixabay.com/photo/2015/11/19/08/47/banner-1050614_1280.jpg",
            150),
        CardPicture(
            "https://cdn.pixabay.com/photo/2015/12/01/08/42/banner-1071789_1280.jpg",
            150),
        MyCard('iPhone 12 Pro Max', 'iPhone 12 Pro Max 256GB', 39900,
            'https://www.itying.com/images/flutter/1.png'),
        MyCard('iPhone 12 Pro', 'iPhone 12 Pro 256GB', 33900,
            'https://www.itying.com/images/flutter/2.png'),
        MyCard('iPhone 12', 'iPhone 12 256GB', 29900,
            'https://www.itying.com/images/flutter/3.png'),
        MyCard('iPhone 12 Mini', 'iPhone 12 Mini 256GB', 24900,
            'https://www.itying.com/images/flutter/4.png'),
        MyCard("dome", "poramest", 200,
            "https://www.itying.com/images/flutter/5.png"),
      ],
    );
  }
}
