import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Page
import 'package:warehouse_mnmt/Page/selling_page.dart';
import 'package:warehouse_mnmt/Page/selling_nav_pickProd.dart';

// Component
import 'package:warehouse_mnmt/components/datePicker_component.dart';

import 'package:warehouse_mnmt/components/styleButton.dart';

// Model
import 'package:warehouse_mnmt/Models/products.dart';

class sellingNavEdit extends StatelessWidget {
  List<Prod> products = [
    const Prod(
        prodName: "Scream Black Coat1",
        prodType: "Size XL",
        prodDetail: "Leather 100%",
        prodImage:
            "https://i.pinimg.com/736x/9b/d5/2d/9bd52d53db79c93fd844db0a50027049.jpg",
        prodPrice: 590.50,
        prodAmount: 2),
    const Prod(
        prodName: "Scream Black Coat",
        prodType: "Size XL",
        prodDetail: "Cotton 100%",
        prodImage:
            "https://i.pinimg.com/236x/7a/20/65/7a2065880006c6df6dfbb1fbd3fb8b9f.jpg",
        prodPrice: 590.50,
        prodAmount: 1),
  ];

  final User user;

  sellingNavEdit({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          title: Column(
            children: [
              Text(
                "แก้ไขรายการขาย",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            )
          ],
          flexibleSpace: Center(
              child: Baseline(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(user.urlAvatar),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  user.username,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
            baselineType: TextBaseline.alphabetic,
            baseline: 90,
          )),
          backgroundColor: Color.fromRGBO(30, 30, 65, 1.0),
        ),
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
        child:
            // Text(
            //   user.username,
            //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            // )
            Column(children: [
          const SizedBox(
            height: 150,
          ),
          // Date Picker
          Container(
            width: 430,
            height: 70,
            child: datePicker(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text(
              "รายการสินค้า",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(56, 48, 77, 1.0),
                borderRadius: BorderRadius.circular(15)),
            width: 400,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                ElevatedButton(
                  style: prodPickButtonStyle,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text("เลือกสินค้า"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  // color: Colors.pink,
                  height: 170.0,
                  width: 400.0,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          shadowColor: Colors.grey.withOpacity(0.5),
                          color: Color.fromRGBO(56, 54, 76, 1.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(product.prodImage),
                            ),
                            title: Text(
                              product.prodName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            subtitle: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text(
                                  product.prodType,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  'ราคา/หน่วย ${NumberFormat("#,###.##").format(product.prodPrice)}',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 110),
                                child: Text(
                                  'ราคา ${NumberFormat("#,###.##").format(product.prodPrice)}',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                            ]),
                            trailing: Text(
                              '${NumberFormat("#,###.##").format(product.prodAmount)}',
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      sellingNavPickProd(product: product)));
                            },
                          ),
                        );
                      }),
                )
                // ListView
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
