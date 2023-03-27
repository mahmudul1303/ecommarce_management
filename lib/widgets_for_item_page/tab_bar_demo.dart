import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  var selected = 0;
  List<String> myList1 = ['Delivery', 'Pickup', 'Dine-in'];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              selected=index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 15,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                color: selected == index
                    ? Colors.lightGreenAccent[700]
                    : Colors.black54
            ),
            child: Text(myList1[index], style: myStyle(14, FontWeight.normal, Colors.white),),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(
              width: 3,
            ),
        itemCount: myList1.length);
  }
}
