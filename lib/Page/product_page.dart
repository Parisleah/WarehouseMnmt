import 'package:flutter/material.dart';

// Component
import 'package:warehouse_mnmt/components/searchBar_component.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 0,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              " สินค้า",
              style: TextStyle(fontSize: 25),
            ),

            backgroundColor: Colors.transparent,
            // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              )
            ],
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Baseline(
                child: searchBar_component("ชื่อสินค้า"),
                baselineType: TextBaseline.alphabetic,
                baseline: 90,
              ),
            ),

            // backgroundColor: Colors.indigo.shade900,

            // shape: RoundedRectangleBorder(
            //     borderRadius:
            //         BorderRadius.vertical(bottom: Radius.circular(16))),

            bottom: TabBar(
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(37, 35, 53, 1.0)),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [],
            ),

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
