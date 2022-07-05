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
        username: "Thejassvee",
        email: "Thejacvee.jagg@bumail.net",
        urlAvatar:
            "https://yt3.ggpht.com/vWyy-S6mrH0522dupmgkOq-HRHEwjm-q_qt6UUlvhp11_iTTQoITKuC4jGN05e_kwl2OTOmA=s900-c-k-c0x00ffffff-no-rj",
        cost: 699.12165,
        sellingDate: "14 เม.ย. 2022"),
    const User(
        username: "Pisit Janthawee",
        email: "Pisit.jant@bumail.net",
        urlAvatar:
            "https://scontent.fbkk4-2.fna.fbcdn.net/v/t1.6435-9/88154019_2612602255641052_5203521606894223360_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE9dxwmZnj8JUAqhjDVruBknB-2SijWS-acH7ZKKNZL5i57DIONDmiNODrQmDiTWVpYf4WB5-CLltd_mEYgW6dK&_nc_ohc=opqwwDRXHu8AX-Mj1Sd&_nc_ht=scontent.fbkk4-2.fna&oh=00_AT-zPjcQkfDS5L7twXD-nFsC7yLYaMJr7GgSCQsvpQBAZQ&oe=62DC6820",
        cost: 890.12165,
        sellingDate: "14 เม.ย. 2022"),
    const User(
        username: "Nattapat Kongpanya",
        email: "Nattapat.Kong@bumail.net",
        urlAvatar:
            "https://instagram.fbkk3-1.fna.fbcdn.net/v/t51.2885-15/274911629_146513871151813_3524025211260475370_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fbkk3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=PUC6ft8oRLAAX89Hr_L&tn=Q4_hpCT4vYxXKS2x&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjc4Mjg4OTU0NDcwMjYwMzM3MQ%3D%3D.2-ccb7-5&oh=00_AT-VhDExLFAdmPYBit6hbVu4plX5Jlz7zWXMdBJnTCrCSw&oe=62BD2ACA&_nc_sid=30a2ef",
        cost: 1890.12165,
        sellingDate: "14 เม.ย. 2022"),
    const User(
        username: "Phongsiri Chaisrida",
        email: "Dong.chai@bumail.net",
        urlAvatar:
            "https://scontent.fbkk4-2.fna.fbcdn.net/v/t39.30808-6/273028212_1969379269911513_6834572220376279937_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHxl1N8E14wAiy5XO6UYoEczWlc8PPPKz7NaVzw888rPjU3AGnu87os-iFMfEyPQzfGtoNLya0WWBf6GOeA1vFw&_nc_ohc=6ywswFDO1_0AX80Maod&_nc_zt=23&_nc_ht=scontent.fbkk4-2.fna&oh=00_AT9rbI29_KmTVxvqsAPJl-kAtfnib5a-qlRKVzHLf2uiKg&oe=62BB4700",
        cost: 990.12165,
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
                      radius: 30,
                      // backgroundImage: NetworkImage(user.urlAvatar),
                      backgroundImage: AssetImage('assets/images/ga.png'),
                    ),

                    // leading: Container(
                    //   width: 70.0,
                    //   height: 70.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     image: const DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: AssetImage('assets/images/ga.png'),
                    //     ),
                    //   ),
                    // ),
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
