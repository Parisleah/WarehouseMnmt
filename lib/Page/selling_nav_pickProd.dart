import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

// Page
import 'package:warehouse_mnmt/Page/selling_page.dart';

// Model
import 'package:warehouse_mnmt/Models/products.dart';

// Component

class sellingNavPickProd extends StatefulWidget {
  final Prod product;

  sellingNavPickProd({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<sellingNavPickProd> createState() => _sellingNavPickProdState();
}

class _sellingNavPickProdState extends State<sellingNavPickProd> {
  final items = ["item1", "item2", "item3", "item4", "item5"];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          title: Column(
            children: [
              Text(
                "เลือกสินค้า",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            // ?
          ],
          flexibleSpace: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Baseline(
              baselineType: TextBaseline.alphabetic,
              baseline: 90,
              child: Text(
                widget.product.prodName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: 150,
                  image: NetworkImage(widget.product.prodImage),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.product.prodName,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                widget.product.prodType,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                widget.product.prodDetail,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                "คงเหลือสินค้าทั้งหมด ${NumberFormat("#,###").format(widget.product.prodAmount)} ชิ้น",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Container(
                width: 350,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    hint: Text(
                      "เลือกแบบสินค้า",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    value: value,
                    isExpanded: true,
                    iconSize: 30,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      color: Color.fromRGBO(56, 54, 76, 1.0),
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 350,
                    dropdownWidth: 350,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color.fromRGBO(66, 64, 87, 1.0),
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.value = value),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      );
}
