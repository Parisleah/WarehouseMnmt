import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Components
import 'package:warehouse_mnmt/components/searchBar_component.dart';
import 'package:warehouse_mnmt/Page/selling_nav_showProd.dart';

// Model
import 'package:warehouse_mnmt/Models/products.dart';

class buying_nav_pickProd extends StatefulWidget {
  // Variable
  // bool showInCartIsVisible;

  buying_nav_pickProd({
    Key? key,
    // required this.showInCartIsVisible,
  }) : super(key: key);

  @override
  State<buying_nav_pickProd> createState() => _buying_nav_pickProdState();
}

class _buying_nav_pickProdState extends State<buying_nav_pickProd> {
  // Variable
  // Show Widget ?
  bool showInCartIsVisible = false;
  bool showOutOfStockIsVisible = true;
  // Show Widget ?

  // Product Add in Cart
  void _showInCartIcon() {
    setState(() {
      showInCartIsVisible = !showInCartIsVisible;
    });
  }

  List<Prod> products = [
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/1.png",
        prodPrice: 590.50,
        prodAmount: 10),
    const Prod(
        prodName: "Scream Black Coat1",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/2.png",
        prodPrice: 590.50,
        prodAmount: 12),
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/3.png",
        prodPrice: 590.50,
        prodAmount: 20),
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/4.png",
        prodPrice: 590.50,
        prodAmount: 15),
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/5.png",
        prodPrice: 590.50,
        prodAmount: 8),
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/6.png",
        prodPrice: 590.50,
        prodAmount: 10),
    const Prod(
        prodName: "Scream Black Coat2",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/7.png",
        prodPrice: 590.50,
        prodAmount: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          title: Column(
            children: [
              Text(
                "เลือกสินค้า",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          centerTitle: true,
          actions: [],
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Baseline(
              child: searchBar_component("ชื่อสินค้า"),
              baselineType: TextBaseline.alphabetic,
              baseline: 90,
            ),
          ),
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
        child: Column(children: [
          SizedBox(height: 140),
          TextButton(
              onPressed: () {
                setState(() {
                  showInCartIsVisible = !showInCartIsVisible;
                  showOutOfStockIsVisible = !showOutOfStockIsVisible;
                });
              },
              child: Text(
                "Test ",
                style: TextStyle(fontSize: 20),
              )),
          // ListView
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 518.0,
              width: 440.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent,
              ),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                sellingNavShowProd(product: product)));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 80,
                            width: 400,
                            color: Color.fromRGBO(56, 54, 76, 1.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                      image: new AssetImage(product.prodImage),
                                      fit: BoxFit.fill,
                                    ))),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text(
                                            product.prodName,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundColor:
                                                Color.fromRGBO(30, 30, 49, 1.0),
                                            child: Text(
                                                '${NumberFormat("#,###.##").format(product.prodAmount)}',
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        product.prodCategory,
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                      Text(
                                          'ราคา/หน่วย ${NumberFormat("#,###.##").format(product.prodPrice)}',
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      Text(
                                          'ราคา ${NumberFormat("#,###.##").format(product.prodPrice)}',
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        if (showInCartIsVisible)
                                          // ตะกร้า 1 -------------------------
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            child: Container(
                                              height: 15,
                                              width: 22,
                                              color: Colors.redAccent,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons
                                                          .shopping_cart_rounded,
                                                      size: 10,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "1",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        // ตะกร้า 1 -------------------------

                                        if (showOutOfStockIsVisible)

                                          // + เพิ่มสินค้า  -------------------------
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            child: Container(
                                              height: 30,
                                              width: 65,
                                              color: Colors.greenAccent,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Center(
                                                  child: const Text(
                                                    "+ เพิ่มสินค้า",
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        // + เพิ่มสินค้า  -------------------------

                                        // if product's amount is out of Stock
                                        // สินค้าหมด Tag -------------------------------------
                                        // ClipRRect(
                                        //   borderRadius:
                                        //       BorderRadius.circular(5),
                                        //   child: Container(
                                        //     height: 15,
                                        //     width: 50,
                                        //     color: Colors.redAccent,
                                        //     child: Center(
                                        //       child: const Text(
                                        //         "สินค้าหมด",
                                        //         style: TextStyle(
                                        //             fontSize: 10,
                                        //             color: Colors.white),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // )
                                        // สินค้าหมด Tag -------------------------------------
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
          // ListView
        ]),
      ),
    );
  }
}
