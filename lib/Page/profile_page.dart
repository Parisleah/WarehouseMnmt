import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 0,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: AppBar(
            title: const Text(
              " ร้านของฉัน",
              style: TextStyle(fontSize: 25),
            ),

            backgroundColor: Colors.transparent,
            // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "บันทึก",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ))
            ],
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Baseline(
                baselineType: TextBaseline.alphabetic,
                baseline: 90,
              ),
            ),

            bottom: TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(37, 35, 53, 1.0)),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: []),

            elevation: 0,
            titleSpacing: 4,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(29, 29, 65, 1.0),
              Color.fromRGBO(31, 31, 31, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(
              height: 180,
            ),
          ]),
        ),
      ));
}
