import 'package:flutter/material.dart';
import 'package:warehouse_mnmt/new_user_screen/page_6_create_store_name.dart';

class VerifyCreatePinScreen extends StatefulWidget {
  const VerifyCreatePinScreen({Key? key}) : super(key: key);

  @override
  State<VerifyCreatePinScreen> createState() => _VerifyCreatePinScreenState();
}

class _VerifyCreatePinScreenState extends State<VerifyCreatePinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color.fromRGBO(29, 29, 65, 1.0),
              Color.fromRGBO(31, 31, 31, 1.0),
            ],
            begin: Alignment.topCenter,
          )
        ),
        child: OtpScreen(),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<String> currentPin = ['','','','','',''];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  TextEditingController pinFiveController = TextEditingController();
  TextEditingController pinSixController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    // ignore: prefer_const_constructors 
    borderSide: BorderSide(color: Colors.transparent),
  );

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          buildExitButton(),
          Expanded(
            child: Container(
              alignment: Alignment(0,0.5),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  buildSecurityText(),
                  SizedBox(height: 40.0),
                  buildPinRow(),
                ],
              ),
            ),
          ),
          buildNumberPad(),
        ],
      ),
    );
  }

  buildNumberPad() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n:1,
                    onPressed:(){
                      pinIndexSetup("1");
                    },
                  ),
                  KeyboardNumber(
                    n:2,
                    onPressed:(){
                      pinIndexSetup("2");
                    },
                  ),
                  KeyboardNumber(
                    n:3,
                    onPressed:(){
                      pinIndexSetup("3");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n:4,
                    onPressed:(){
                      pinIndexSetup("4");
                    },
                  ),
                  KeyboardNumber(
                    n:5,
                    onPressed:(){
                      pinIndexSetup("5");
                    },
                  ),
                  KeyboardNumber(
                    n:6,
                    onPressed:(){
                      pinIndexSetup("6");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n:7,
                    onPressed:(){
                      pinIndexSetup("7");
                    },
                  ),
                  KeyboardNumber(
                    n:8,
                    onPressed:(){pinIndexSetup("8");},
                  ),
                  KeyboardNumber(
                    n:9,
                    onPressed:(){pinIndexSetup("9");},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    // ignore: prefer_const_constructors
                    child: MaterialButton(
                      onPressed: null,
                      child: SizedBox(),
                    ),
                  ),
                  KeyboardNumber(
                    n:0,
                    onPressed:(){
                      pinIndexSetup("0");
                    },
                  ),
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      onPressed: (){
                        clearPin();
                      },
                      // child: Image.asset(
                      //   "image/delete.png",
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  clearPin(){
    if(pinIndex == 0)
      pinIndex = 0;
    else if (pinIndex == 6) {
      setPin(pinIndex, '');
      currentPin[pinIndex-1] == '';
      pinIndex--;
    }
    else {
      setPin(pinIndex, '');
      currentPin[pinIndex-1] = '';
      pinIndex--;
    }
  }

  pinIndexSetup(String text){
    if(pinIndex == 0)
      pinIndex = 1;
    else if (pinIndex < 6)
      pinIndex++;
    setPin(pinIndex,text);
    currentPin[pinIndex-1] = text;
    String veriPin = '';
    currentPin.forEach((e) {
      veriPin += e;
    });
    if(pinIndex == 6){
      print(["Verify:", veriPin]);
      Navigator.push(context, 
      MaterialPageRoute(
        builder: (context)=> const CreateStoreName())
      );  
    }
  }

  setPin(int n, String text) {
    switch(n) {
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinFiveController.text = text;
        break;
      case 6:
        pinSixController.text = text;
        break;
    }
  }

  buildPinRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinOneController,
      ),
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinTwoController,
      ),
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinThreeController,
      ),
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinFourController,
      ),
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinFiveController,
      ),
      PINNumber(
        outlineInputBorder: outlineInputBorder,
        textEditingController: pinSixController,
      ),
    ],
  );
}

  buildSecurityText() {
    // ignore: prefer_const_constructors
    return Container(
      child: const Text("กำหนดรหัส PIN", 
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.white,
          fontSize: 21.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  buildExitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: (){},
            height: 50.0,
            minWidth: 50.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(Icons.clear, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PINNumber({required this.textEditingController, required this.outlineInputBorder});
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        fillColor: const Color.fromRGBO(50, 224, 119, 1.0)
        ),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          color: Colors.white,
        ),
      )
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({required this.n, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepPurpleAccent.withOpacity(0.1), 
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
        height: 90.0,
        child: Text(
          "$n", 
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontSize: 26*MediaQuery.of(context).textScaleFactor,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}