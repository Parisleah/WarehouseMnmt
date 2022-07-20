// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AllStorePage extends StatelessWidget {
  const AllStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(29, 29, 65, 1.0),
              Color.fromRGBO(31, 31, 31, 1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 15),
                Text('ร้านของฉัน',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 30
                  )
                ),

                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(56 , 54, 76, 1.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                  ),
                  onPressed: () {  },
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.image,
                          size: 90,
                          color: Colors.white,
                          ),
                          SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                          'P. Janthawee Shop',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '086-666-6666',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),
                        )
                          ],
                        ),
                      ],
                    )
                  ))
                ),

                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(56 , 54, 76, 1.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  ),
                  onPressed: () {  },
                  child: Center(
                    child: Column(
                      children: const [
                      Text(
                        '+ เพิ่มร้านค้าใหม่',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                        ),
                      ),
                      ],
                    )
                  ))
                ),


              ]
            ),
          ),
        ),
      ),
    );
  }
}
