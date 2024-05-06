import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyCard extends StatelessWidget {
  String title = '';
  String description = '';
  double price = 0.0;
  String imageUrl = '';

  MyCard(this.title, this.description, this.price, this.imageUrl) {
    // Add method body here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Card image
          Center(
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),

          //Card title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Text(title,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          ),

          //Card description
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              description,
            ),
          ),

          //Card price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Text('\฿ ${NumberFormat('#,###.##').format(price)}',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue)),
          ),

          //Buy now button
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Buy now",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardPicture extends StatelessWidget {
  String imageUrl = '';
  double height = 0.0;

  CardPicture(this.imageUrl, this.height) {
    // Add method body here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Card image
          Image.network(
            imageUrl,
            height: 150,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
