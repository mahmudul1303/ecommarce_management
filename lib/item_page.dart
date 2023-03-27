import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:e_commerce_ui/widgets_for_item_page/boys_item.dart';
import 'package:e_commerce_ui/widgets_for_item_page/girls_item.dart';
import 'package:e_commerce_ui/widgets_for_item_page/item_category.dart';
import 'package:e_commerce_ui/widgets_for_item_page/lifestyle_demo.dart';
import 'package:e_commerce_ui/widgets_for_item_page/search_bar_demo.dart';
import 'package:e_commerce_ui/widgets_for_item_page/tab_bar_demo.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.transparent,
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: TabBarDemo(),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Now . 34 W 47h st',
                                style: myStyle(
                                    14, FontWeight.normal, Colors.white70),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white70,
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: SearchBarDemo(),
                        )),
                    Expanded(
                        flex: 5,
                        child: Container(
                          child: LifeStyleDemo(),
                        )),
                    Expanded(
                        flex: 5,
                        child: Container(
                          child: ItemCategory(),
                        )),
                    Expanded(
                        flex: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: GirlsItem(),
                        )),
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: BoysItem(),
                        )),
                    Divider(
                      height: 2,
                      thickness: 4,
                      color: Colors.grey,
                      indent: 100,
                      endIndent: 100,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
