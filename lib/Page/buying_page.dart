import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:warehouse_mnmt/Page/buying/buying_nav_add.dart';

// Page
// Edit
import 'package:warehouse_mnmt/Page/buying/buying_nav_edit.dart';
// Add
import 'package:warehouse_mnmt/Page/buying/buying_nav_add.dart';

// Component
import 'package:warehouse_mnmt/components/searchBar_component.dart';

class Dealer {
  final String name;
  final String phone;
  final double cost;
  final String buyDate;

  const Dealer({
    required this.name,
    required this.phone,
    required this.cost,
    required this.buyDate,
  });
}

class BuyingPage extends StatelessWidget {
  List<Dealer> dealers = [
    const Dealer(
        name: "Awesome Shop",
        phone: "099-123-4567",
        cost: 699.12165,
        buyDate: "14 เม.ย. 2022 14:35:52"),
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              " สั่งซื้อสินค้า",
              style: TextStyle(fontSize: 25),
            ),

            backgroundColor: Colors.transparent,
            // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => buyingNavAdd()));
                },
                icon: Icon(Icons.add),
              )
            ],
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Baseline(
                child: searchBar_component("ชื่อร้าน หรือ เบอร์โทรศัพท์ร้าน"),
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
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("ทั้งหมด "),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("ยังไม่ได้รับสินค้า"),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color.fromRGBO(56, 54, 76, 1.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("ได้รับสินค้าแล้ว"),
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
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: dealers.length,
              itemBuilder: (context, index) {
                final dealer = dealers[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Colors.grey.withOpacity(0.5),
                  color: Color.fromRGBO(56, 54, 76, 1.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1.0),

                      // backgroundImage: AssetImage(dealer.urlAvatar),
                    ),
                    title: Row(
                      children: [
                        Text(
                          dealer.name,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          dealer.phone,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    subtitle: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          "ค่าใช้จ่าย",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      Text(
                        dealer.buyDate,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ]),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                        Text(
                          '${NumberFormat("#,###.##").format(dealer.cost)} ฿',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => buyingNavEdit(dealer: dealer)));
                    },
                  ),
                );
              }),
        ),
      ));
}
