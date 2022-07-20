// Import File
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Import Style & Component
import 'package:warehouse_mnmt/components/styleButton.dart';
import 'package:warehouse_mnmt/components/moneyBox_component.dart';
import 'package:warehouse_mnmt/main.dart';

// Models
import 'package:warehouse_mnmt/Models/customers.dart';

// Page
import 'package:warehouse_mnmt/Page/selling_nav_edit.dart';

class DashboardPage extends StatelessWidget {
  List<Customer> customers = [
    const Customer(
        username: "Thejasvee",
        email: "Thejasvee.jagg@bumail.net",
        urlAvatar: "assets/images/profiles/Tj.png",
        cost: 699.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Pisit Janthawee",
        email: "Pisit.jant@bumail.net",
        urlAvatar: "assets/images/profiles/Aum.png",
        cost: 890.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Nattapat Kongpanya",
        email: "Nattapat.Kong@bumail.net",
        urlAvatar: "assets/images/profiles/Mark.png",
        cost: 1890.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Phongsiri Chaisrida",
        email: "Dong.chai@bumail.net",
        urlAvatar: "assets/images/profiles/Dong.png",
        cost: 990.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Phongsiri Chaisrida",
        email: "Dong.chai@bumail.net",
        urlAvatar: "assets/images/profiles/Dong.png",
        cost: 990.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Phongsiri Chaisrida",
        email: "Dong.chai@bumail.net",
        urlAvatar: "assets/images/profiles/Dong.png",
        cost: 990.12165,
        sellingDate: "14 เม.ย. 2022"),
    const Customer(
        username: "Phongsiri Chaisrida",
        email: "Dong.chai@bumail.net",
        urlAvatar: "assets/images/profiles/Dong.png",
        cost: 990.12165,
        sellingDate: "14 เม.ย. 2022"),
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            title: const Text(
              " ภาพรวม",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Color.fromRGBO(30, 30, 65, 1.0),
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
        body: SingleChildScrollView(
          child: Container(
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
              SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 165,
              ),
              MoneyBox("ยอดทุนทั้งหมด", 12000.550,
                  Color.fromRGBO(56, 54, 76, 1.0), 120, Colors.red),
              const SizedBox(
                height: 10,
              ),
              MoneyBox("ยอดขายทั้งหมด", 30000.63,
                  Color.fromRGBO(56, 54, 76, 1.0), 120, Colors.yellow),
              const SizedBox(
                height: 10,
              ),
              MoneyBox("ยอดกำไรสุทธิ", 18000.63,
                  Color.fromRGBO(56, 54, 76, 1.0), 120, Colors.greenAccent),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "รายการขายสินค้าวันนี้",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
              Container(
                height: 140,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: customers.length,
                    itemBuilder: (context, index) {
                      final customer = customers[index];
                      return TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  sellingNavEdit(customer: customer)));
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(56, 54, 76, 1.0),
                                  Color.fromRGBO(56, 54, 76, 1.0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  customer.username,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Text(
                                  '${NumberFormat("#,###.##").format(customer.cost)} ฿',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 150,
              )
            ]),
          ),
        ),
      ));
}
