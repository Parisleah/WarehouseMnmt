// Main.dart
import 'package:flutter/material.dart';

import 'Page/dashboard_page.dart';
import 'Page/buying_page.dart';
import 'Page/selling_page.dart';
import 'Page/profile_page.dart';
import 'Page/product_page.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "??",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    DashboardPage(),
    SellingPage(),
    BuyingPage(),
    ProductPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.greenAccent,
        backgroundColor: Colors.indigo.shade900,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex, 
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_rounded),
            label: "ภาพรวม 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.back_hand),
            label: "ขายสินค้า",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: "สั่งซื้อสินค้า",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warehouse),
            label: "สินค้า",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory_rounded),
              label: "ร้านของฉัน"),
        ],
      ),
    );
  }
}
