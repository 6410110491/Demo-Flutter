import 'package:firstflutterapp/Card.dart';
import 'package:firstflutterapp/page/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/MoneyBox.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchBarApp(),
              SizedBox(height: 15),
              MyBox('ยอดเงินคงเหลือ', 150, 4000000.55, Colors.blue),
              MyBox('รายรับ', 120, 50000, Colors.green),
              MyBox('รายจ่าย', 120, 3000, Colors.red),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                  child: const Text('Next Page',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          leading: const Icon(Icons.search),
        );
      }, suggestionsBuilder:
              (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      }),
    );
  }
}
