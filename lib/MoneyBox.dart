import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyBox extends StatelessWidget {
  String title = '';
  double height = 0.0;
  double amount = 0.0;
  Color color = Colors.blue;

  MyBox(this.title, this.height, this.amount, this.color) {
    // Add method body here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          height: height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style:const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Text('${NumberFormat('#,###.##').format(amount)} บาท',
                    style:const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.right),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}


