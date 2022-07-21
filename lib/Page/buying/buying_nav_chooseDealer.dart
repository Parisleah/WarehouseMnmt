import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

// Page
import 'package:warehouse_mnmt/Page/buying/buying_nav_createDealer.dart';

class buying_nav_chooseDealer extends StatefulWidget {
  const buying_nav_chooseDealer({Key? key}) : super(key: key);

  @override
  State<buying_nav_chooseDealer> createState() =>
      _buying_nav_chooseDealerState();
}

class _buying_nav_chooseDealerState extends State<buying_nav_chooseDealer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Column(
          children: [
            Text(
              "เลือกตัวแทนจำหน่าย",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => buying_nav_createDealer()));
            },
            icon: Icon(Icons.add),
          )
        ],
        backgroundColor: Color.fromRGBO(30, 30, 65, 1.0),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(29, 29, 65, 1.0),
            Color.fromRGBO(31, 31, 31, 1.0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(children: [
          SizedBox(height: 80),

          // Choose Customer Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(56, 54, 76, 1.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: const Text("Awesome Shop",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              )
            ]),
          ),
          // Choose Customer Button
        ]),
      ),
    );
  }
}
