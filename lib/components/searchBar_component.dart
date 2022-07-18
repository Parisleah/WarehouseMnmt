import 'package:flutter/material.dart';

class searchBar_component extends StatefulWidget {
  String title;

  searchBar_component(this.title);

  @override
  State<searchBar_component> createState() => _searchBar_componentState();
}

class _searchBar_componentState extends State<searchBar_component> {
  // TextField
  final searchBarController = TextEditingController();
  void initState() {
    super.initState();
    searchBarController.addListener(() => setState(() {}));
  }

  // TextField
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: searchBarController,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(56, 48, 77, 1.0),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none),
          hintText: widget.title,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: const Icon(Icons.search, color: Colors.white),
          suffixIcon: !searchBarController.text.isEmpty
              ? IconButton(
                  onPressed: () => searchBarController.clear(),
                  icon: const Icon(
                    Icons.close_sharp,
                    color: Colors.white,
                  ),
                )
              : null,
        ));
  }
}
