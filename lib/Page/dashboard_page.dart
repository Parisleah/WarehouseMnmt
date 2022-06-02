import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("ภาพรวม"),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
            child: Text(
          "ภาพรวม",
          style: TextStyle(fontSize: 60),
        )),
      );
}
