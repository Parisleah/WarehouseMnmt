// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:warehouse_mnmt/new_user_screen/page_4_create_pin.dart';


class VeriPhoneNumber extends StatefulWidget {
  const VeriPhoneNumber({Key? key}) : super(key: key);

  @override
  State<VeriPhoneNumber> createState() => _VeriPhoneNumberState();
}

class _VeriPhoneNumberState extends State<VeriPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              // Blackgroud
              Text('เบอร์โทรศัพท์ของคุณ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold, 
                  fontSize: 22
                )
              ),

              // Phone Number textfield
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(56, 48, 77, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),  
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'เบอร์โทรศัพท์มือถือ'
                      ),
                    ),
                  ),
                ),
              ),

              // ยืนยัน button
              SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(50 , 224, 119, 1.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Color.fromRGBO(50 , 224, 119, 1.0))
                      )
                    )
                  ),
                  child: Text('ยืนยัน',
                    style: TextStyle(fontSize: 20)
                    ), 
                    onPressed: () { 
                      Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=> CreatePinScreen() ),
                    );
                  },
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}