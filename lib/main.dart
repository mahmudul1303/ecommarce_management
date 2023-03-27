import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:e_commerce_ui/item_page.dart';
import 'package:e_commerce_ui/splash_screen/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageDemo(),
    );
  }
}
