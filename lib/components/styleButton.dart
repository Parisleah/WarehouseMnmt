import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Color.fromRGBO(45, 45, 45, 1.0),
  minimumSize: Size(40, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

// Product Picking Butoton
final ButtonStyle prodPickButtonStyle = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(34, 34, 34, 1.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    fixedSize: const Size(380, 50));
