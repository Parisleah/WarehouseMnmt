import 'package:flutter/material.dart';

class BuyingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("สั่งซือสินค้า"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
            child: Text(
          "สั่งซือสินค้า",
          style: TextStyle(fontSize: 60),
        )),
      );
}
