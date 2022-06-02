import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("สินค้า"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
            child: Text(
          "สินค้า",
          style: TextStyle(fontSize: 60),
        )),
      );
}
