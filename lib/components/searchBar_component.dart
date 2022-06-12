import 'package:flutter/material.dart';

class searchBar_component extends StatelessWidget {
  String title;

  searchBar_component(this.title);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      filled: true,
      fillColor: const Color.fromRGBO(56, 48, 77, 1.0),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none),
      hintText: title,
      hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
      prefixIcon: const Icon(Icons.search, color: Colors.white),
    ));
  }
}
