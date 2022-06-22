// Import File
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Import Style & Component
import 'package:warehouse_mnmt/components/styleButton.dart';
import 'package:warehouse_mnmt/components/moneyBox_component.dart';
import 'package:warehouse_mnmt/main.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            title: const Text(
              " ภาพรวม",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Colors.transparent,
            // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              )
            ],
            flexibleSpace: const Center(
                child: Baseline(
              child: Text(
                "Kuay TJ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              baselineType: TextBaseline.alphabetic,
              baseline: 40,
            )),
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
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("ทั้งหมด"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("วันนี้"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("สัปดาห ์"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("เดือน "),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("ระบุวัน"),
                      ),
                    ),
                  ),
                ]),
            elevation: 0,
            titleSpacing: 4,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
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
            const SizedBox(
              height: 165,
            ),
            MoneyBox("ยอดทุนทั้งหมด", 12000.550,
                Color.fromRGBO(56, 54, 76, 1.0), 120, Colors.red),
            const SizedBox(
              height: 10,
            ),
            MoneyBox("ยอดขายทั้งหมด", 30000.63, Color.fromRGBO(56, 54, 76, 1.0),
                120, Colors.yellow),
            const SizedBox(
              height: 10,
            ),
            MoneyBox("ยอดกำไรสุทธิ", 18000.63, Color.fromRGBO(56, 54, 76, 1.0),
                120, Colors.greenAccent),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ));
}
