// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../normal_user_screen/all_store_page.dart';

class PicStoreScreen extends StatefulWidget {
  PicStoreScreen({Key? key}) : super(key: key);

  @override
  State<PicStoreScreen> createState() => _PicStoreScreenState();
}

class _PicStoreScreenState extends State<PicStoreScreen> { 

  showAlert() async{
    Alert(
      context: context,
      type: AlertType.success,
      title: "สร้างร้านค้าสำเร็จ",
      buttons: [
        DialogButton(
          // ignore: sort_child_properties_last
          child: Text(
            "ดูร้านค้า",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=> const AllStorePage()),
                      ),
          color: Color.fromRGBO(50, 224, 119, 1.0),
          width: 120,
        )
      ],
    ).show();
  }

  File? _image;

  Future getImage() async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image == null) return;
    final imageTemporary = File(image.path);

    setState(() {
      _image = imageTemporary;
      }
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text('ชื่อร้านในหน้า 6 ',
                    style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                    )
                  ),
                  // เพิ่มรูปร้านค้า
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top:10, right: 40, bottom: 0),
                    child: _image != null ? Image.file(_image!, width: 250, height: 250, fit: BoxFit.cover,) : const Icon(Icons.image, size: 200, color: Color.fromARGB(255, 143, 143, 143),),
                  ),
                  
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: getImage,
                    child: const Text('เพิ่มรูปร้านค้า'),
                  ),

                  // เบอร์โทรร้านค้า Text
                  const SizedBox(height: 20),
                  Text('เบอร์โทรศัพท์ร้านค้า',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                  ),

                  // เบอร์โทรร้านค้า Textf
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(56, 48, 77, 1),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 3)
                          )
                        ]
                      ),  
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'กำหนดชื่อร้านค้าของคุณ',
                            hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(50 , 224, 119, 1.0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Color.fromRGBO(50 , 224, 119, 1.0))
                        )
                      )
                    ),
                    // ignore: prefer_const_constructors
                    child: Text('ยืนยัน',
                      // ignore: prefer_const_constructors
                      style: TextStyle(fontSize: 20)
                      ), 
                      onPressed: () {
                        showAlert();
                      },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}