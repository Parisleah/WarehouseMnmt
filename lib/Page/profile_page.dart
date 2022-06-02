import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ร้านค้าของฉัน"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
            child: Text(
          "ร้านค้าของฉัน",
          style: TextStyle(fontSize: 60),
        )),
      );
}
