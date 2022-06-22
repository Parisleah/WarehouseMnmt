import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Navigator Page
import 'package:warehouse_mnmt/Page/selling_nav_edit.dart';

// Component
import 'package:warehouse_mnmt/components/searchBar_component.dart';

class User {
  final String username;
  final String email;
  final String urlAvatar;
  final double cost;
  final String sellingDate;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
    required this.cost,
    required this.sellingDate,
  });
}

class SellingPage extends StatelessWidget {
  List<User> users = [
    const User(
        username: "Pisit Janthawee",
        email: "Pisit.jant@bumail.net",
        urlAvatar:
            "https://yt3.ggpht.com/vWyy-S6mrH0522dupmgkOq-HRHEwjm-q_qt6UUlvhp11_iTTQoITKuC4jGN05e_kwl2OTOmA=s900-c-k-c0x00ffffff-no-rj",
        cost: 699.12165,
        sellingDate: "14 เม.ย. 2022"),
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: AppBar(
            title: const Text(
              " ขายสินค้า",
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
                child: searchBar_component("ชื่อลูกค้า หรือ เบอร์โทรศัพท์"),
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
                        child: Text(" ทั้งหมด "),
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
                      child: Align(
                          alignment: Alignment.center, child: Text("สัปดาห ์")),
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
                      child: Align(
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
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Colors.grey.withOpacity(0.5),
                  color: Color.fromRGBO(56, 54, 76, 1.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(user.urlAvatar),
                    ),
                    title: Text(
                      user.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          user.email,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Text(
                        user.sellingDate,
                        style: TextStyle(color: Colors.grey),
                      )
                    ]),
                    trailing: Text(
                      '${NumberFormat("#,###.##").format(user.cost)} ฿',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sellingNavEdit(user: user)));
                    },
                  ),
                );
              }),
        ),
      ));
}
