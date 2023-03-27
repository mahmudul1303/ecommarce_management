import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width *.20,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/boys5.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('Men', style: myStyle(12, FontWeight.bold, Colors.black),)))
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width *.20,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/girls12.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('Women',style: myStyle(12, FontWeight.bold, Colors.black))))
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width *.20,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/group5.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('Children', style: myStyle(12, FontWeight.bold, Colors.black))))
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddCartPage()));
            },
            child: Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width *.20,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      width: double.infinity,
                      child: Icon(Icons.more_horiz_outlined, color: Colors.lightGreenAccent[700],size: 30,),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.center,
                          child: Text('See all', style: myStyle(12, FontWeight.bold, Colors.black))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
