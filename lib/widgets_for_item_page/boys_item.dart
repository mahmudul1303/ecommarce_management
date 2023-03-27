import 'package:flutter/material.dart';

class BoysItem extends StatefulWidget {
  const BoysItem({Key? key}) : super(key: key);

  @override
  State<BoysItem> createState() => _BoysItemState();
}

class _BoysItemState extends State<BoysItem> {

  List myList1 = [
    {'img': 'images/boys1.jpg', 'name': 'Men & Fashion'},
    {'img': 'images/group2.jpg', 'name': 'Fun & Playful'},
    {'img': 'images/boys2.jpg', 'name': 'Men & Fashion'},
    {'img': 'images/group3.jpg', 'name': 'Fun & Playful'},
    {'img': 'images/boys3.jpg', 'name': 'Men & Fashion'},
    {'img': 'images/group4.jpg', 'name': 'Fun & Playful'},
    {'img': 'images/boys4.jpg', 'name': 'Men & Fashion'},
    {'img': 'images/group5.png', 'name': 'Fun & Playful'},
    {'img': 'images/boys5.jpg', 'name': 'Men & Fashion'},
    {'img': 'images/group6.png', 'name': 'Fun & Playful'},
    {'img': 'images/boys6.png', 'name': 'Men & Fashion'},
    {'img': 'images/group1.png', 'name': 'Fun & Playful'},
    {'img': 'images/boys7.jpeg', 'name': 'Men & Fashion'},
    {'img': 'images/boys8.jpg', 'name': 'Fun & Playful'},

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7,
      crossAxisSpacing: 8,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: List.generate(myList1.length, (index) {
        return Container(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(myList1[index]['img']))),
              ),
              Text(
                myList1[index]['name'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        );
      }),
    );
  }
}
