import 'package:flutter/material.dart';

class SearchBarDemo extends StatelessWidget {
  const SearchBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Woman,man,child dress",
            fillColor: Colors.white,
            suffixIcon: Icon(
              Icons.filter_list,
              color: Colors.lightGreenAccent[700],
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.lightGreenAccent[700],
            )),
      ),
    );
  }
}
