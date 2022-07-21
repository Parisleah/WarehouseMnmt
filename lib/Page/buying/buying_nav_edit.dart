// Others
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:warehouse_mnmt/Page/buying/buying_nav_showProd.dart';
import 'package:warehouse_mnmt/Page/buying_page.dart';
import 'package:warehouse_mnmt/Page/selling_nav_chooseCustomer.dart';
import 'package:warehouse_mnmt/Page/selling_nav_chooseShipping.dart';

// Page
// Page / Selling
import 'package:warehouse_mnmt/Page/selling_page.dart';
import 'package:warehouse_mnmt/Page/selling_nav_showProd.dart';
// Page / Buying
import 'package:warehouse_mnmt/Page/buying/buying_nav_chooseDealer.dart';
import 'package:warehouse_mnmt/Page/buying/buying_nav_pickProd.dart';
import 'package:warehouse_mnmt/Page/buying/buying_nav_showProd.dart';

// Component
import 'package:warehouse_mnmt/components/datePicker_component.dart';
import 'package:warehouse_mnmt/components/styleButton.dart';

// Model
import 'package:warehouse_mnmt/Models/products.dart';

// Class for TextField Decimal Format (ex. 1,000,200.00 $)
import 'package:warehouse_mnmt/components/textField_component.dart';

class buyingNavEdit extends StatefulWidget {
  // Navigation ---------------------------------------------------

  // Navigation ---------------------------------------------------

  // User ---------------------------------------------------------
  final Dealer dealer;

  buyingNavEdit({
    Key? key,
    required this.dealer,
  }) : super(key: key);
  // User ---------------------------------------------------------

  @override
  State<buyingNavEdit> createState() => _buyingNavEditState();
}

class _buyingNavEditState extends State<buyingNavEdit> {
  // //  Visible -----------
  // ตะกร้า
  bool inCartIsVisible = false;

  // สินค้าหมด
  bool outOfStockIsVisible = false;
  //  Visible -----------

  List<Prod> products = [
    const Prod(
        prodName: "Scream Black Coat1",
        prodCategory: "Jacket",
        prodDetail: "Leather 100%",
        prodImage: "assets/images/products/4.png",
        prodPrice: 590,
        prodAmount: 10),
  ];
  // TextField shippingPrice
  final CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter();

  // Edit Detail Zone
  final shippingPrice = 50.99;
  final totalPrice = 1180.99;
  final amount = 3;

  // TextField -------------------------------------------------------------
  // ShipPrice TextField
  static const _locale = 'en';
  String _formatNumber(String s) =>
      NumberFormat.decimalPattern(_locale).format(int.parse(s));
  String get _currency =>
      NumberFormat.compactSimpleCurrency(locale: _locale).currencySymbol;

  final shipPricController = TextEditingController();
  // ShipPrice TextField
  // ----------------------------------------------------------------------

  final specReqController = TextEditingController();

  void initState() {
    super.initState();
    specReqController.addListener(() => setState(() {}));
    shipPricController.addListener(() => setState(() {}));
  }

  bool _value = false;

// Edit Detail Zone
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          title: Column(
            children: [
              Text(
                "แก้ไขการสั่งซื้อ",
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.dealer.name,
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
      body: SingleChildScrollView(
        child: Container(
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
              Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              const SizedBox(
                height: 120,
              ),
              // Date Picker
              Container(
                width: 440,
                height: 70,
                child: datePicker(),
              ),
              Row(
                children: [
                  Text(
                    "ตัวแทนจำหน่าย",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Container of เลือกลูกค้า
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 400,
                height: 70,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text("ยังไม่ได้ระบุตัวแทนจำหน่าย",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => buying_nav_chooseDealer()));
                    },
                  ),
                ]),
              ),
              // Container of เลือกลูกค้า
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "รายการสั่งซื้อ",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Container of รายการสินค้า
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 440,
                height: 310,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    ElevatedButton(
                      style: prodPickButtonStyle,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => buying_nav_pickProd()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text("เลือกสินค้า"),
                        ],
                      ),
                    ),
                    // ListView
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 224.0,
                        width: 440.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(37, 35, 53, 1.0),
                        ),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              final product = products[index];
                              return TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => sellingNavShowProd(
                                          product: product)));
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
                                                image: new AssetImage(
                                                    product.prodImage),
                                                fit: BoxFit.fill,
                                              ))),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  product.prodName,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  product.prodCategory,
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white),
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
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                Color.fromRGBO(30, 30, 49, 1.0),
                                            child: Text(
                                                '${NumberFormat("#,###.##").format(product.prodAmount)}',
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.greenAccent,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              color: Color.fromARGB(
                                                  255, 205, 205, 205)),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "การจัดส่ง",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              // Container of รายการสินค้า
              const SizedBox(
                height: 10,
              ),
              // Container of การจัดส่ง
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 400,
                height: 70,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text("การจัดส่ง",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Spacer(),
                  const Text("Flash Express",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios,
                        color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  selling_nav_chooseShipping()));
                    },
                  ),
                ]),
              ),
              // Container of การจัดส่ง
              const SizedBox(
                height: 10,
              ),
              // Container of ค่าจัดส่ง
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 400,
                height: 70,
                child: TextField(
                    textAlign: TextAlign.end,
                    inputFormatters: [DecimalFormatter()],
                    keyboardType: TextInputType.number,
                    //-----------------------------------------------------
                    style: const TextStyle(color: Colors.grey),
                    controller: shipPricController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none),
                      hintText: "ใส่ค่าจัดส่ง",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      prefixIcon:
                          const Icon(Icons.local_shipping, color: Colors.white),
                      suffixIcon: !shipPricController.text.isEmpty
                          ? IconButton(
                              onPressed: () => shipPricController.clear(),
                              icon: const Icon(
                                Icons.close_sharp,
                                color: Colors.white,
                              ),
                            )
                          : null,
                    )),
              ),
              // Container of ค่าจัดส่ง

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "สรุปรายการสั่งซื้อ",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // Container of จำนวน
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 400,
                height: 70,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text("จำนวน",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        '${NumberFormat("#,###,###,### ชิ้น").format(amount)}',
                        textAlign: TextAlign.left,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ]),
              ),
              // Container of จำนวน
              const SizedBox(
                height: 10,
              ),
              // Container of รวม
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(56, 48, 77, 1.0),
                    borderRadius: BorderRadius.circular(15)),
                width: 400,
                height: 70,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text("รวม",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        '${NumberFormat("#,###,###,###.##").format(totalPrice)}',
                        textAlign: TextAlign.left,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey)),
                  ),
                ]),
              ),
              // Container of รวม
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        _value = !_value;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: _value
                            ? Icon(
                                Icons.check_box,
                                size: 40.0,
                                color: Colors.greenAccent,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 40.0,
                                color: Colors.greenAccent,
                              ),
                      ),
                    ),
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ได้รับสินค้าเรียบร้อยแล้ว",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "(สินค้าคงเหลือจะได้รับการปรับปรุง)",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "ยกเลิก",
                            style: TextStyle(fontSize: 17),
                          ),
                          style: cancelButtonStyle)
                    ]),
                    Column(children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "บันทึก",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: saveButtonStyle,
                      )
                    ]),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
