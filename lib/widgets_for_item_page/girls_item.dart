import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:e_commerce_ui/model.dart';
import 'package:flutter/material.dart';

class GirlsItem extends StatefulWidget {
  const GirlsItem({Key? key}) : super(key: key);

  @override
  State<GirlsItem> createState() => _GirlsItemState();
}

class _GirlsItemState extends State<GirlsItem> {
  final myList = Slist.generatedList();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        myList[index].imgUrl,
                      ),
                      fit: BoxFit.cover)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        myList[index].titleName,
                        style: myStyle(14, FontWeight.normal, Colors.white70),
                      ),
                      Text(
                        'Ethnice',
                        style: myStyle(14, FontWeight.normal,
                            Colors.lightGreenAccent[700]!),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              myList[index].isGreen = !myList[index].isGreen;
                            });
                          },
                          icon: myList[index].isGreen == false
                              ? Icon(
                                  Icons.favorite_border,
                                  color: Colors.white70,
                                )
                              : Icon(
                                  Icons.favorite,
                                  color: Colors.lightGreenAccent[700],
                                )),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Text(
                          myList[index].rating,
                          style: myStyle(12, FontWeight.normal, Colors.white70),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
        separatorBuilder: (_, index) => SizedBox(
              width: 5,
            ),
        itemCount: myList.length);
  }
}
