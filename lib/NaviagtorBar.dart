import 'package:firstflutterapp/page/home.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/page/SecondPage.dart';

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFBC02D),
              ),
              child: Text('Menu',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              title: const Text('Shop'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondRoute();
                }));
              },
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {},
            ),
          ],
        ),
      );
}
