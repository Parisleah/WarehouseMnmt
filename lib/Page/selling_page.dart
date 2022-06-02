import 'package:flutter/material.dart';

class SellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ขายสินค้า"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
            child: Text(
          "ขายสินค้า",
          style: TextStyle(fontSize: 60),
        )),
      );
}
