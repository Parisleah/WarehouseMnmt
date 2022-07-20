// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:warehouse_mnmt/new_user_screen/page_2_phone_number.dart';

class BuildingScreen extends StatefulWidget {
  const BuildingScreen({Key? key}) : super(key: key);

  @override
  State<BuildingScreen> createState() => _BuildingScreenState();
}

class _BuildingScreenState extends State<BuildingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      // Blackgroud
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color.fromRGBO(29, 29, 65, 1.0),
              Color.fromRGBO(31, 31, 31, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: SafeArea(
          child: Center(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.warehouse,
                  size: 90,
                  color: Colors.white,
                  ),
              // เริ่มสร้างร้านค้าของคุณ text
              Text('เริ่มสร้างร้านค้าของคุณ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold, 
                  fontSize: 22
                )
              ),

              // สร้างเลย button
              SizedBox(height: 10),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(50 , 224, 119, 1.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color.fromRGBO(50 , 224, 119, 1.0))
                    )
                  )
                ),
                child: Text('สร้างเลย',
                  style: TextStyle(
                    color: Color.fromRGBO(31, 26, 48, 1),
                    fontSize: 20
                  ),
                  ), 
                  onPressed: () { 
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context)=> PhoneNumberScreen() ),
                  );
                },
              )]
            ),
          ),
        ),
      ),
    );
  }
}