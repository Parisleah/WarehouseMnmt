import 'package:flutter/material.dart';


class dropDown extends StatefulWidget {
  @override
  dropDownState createState() => dropDownState();
}

class dropDownState extends State<dropDown> {
  String? dropdownValue;
  List<Product> products = [
    Product(name: 'sep1', type: 'sep'),
    Product(name: 'milk', type: 'data'),
    Product(name: 'oil', type: 'data'),
    Product(name: 'sep2', type: 'sep'),
    Product(name: 'suger', type: 'data'),
    Product(name: 'salt', type: 'data'),
    Product(name: 'sep3', type: 'sep'),
    Product(name: 'potatoe', type: 'data'),
    Product(name: 'tomatoe', type: 'data'),
    Product(name: 'apple', type: 'data'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text')),
      body: Column(
        children: [
          Text('test'),
          Expanded(
            child: DropdownButton<String>(
              value: dropdownValue,
              items: products.map((value) {
                return DropdownMenuItem(
                  value: value.name,
                  child: value.type == 'data'
                      ? Text(value.name)
                      : Divider(
                          color: Colors.red,
                          thickness: 3,
                        ),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
                print('$newValue $dropdownValue');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  String name;
  String type;

  Product({required this.name, required this.type});
}
