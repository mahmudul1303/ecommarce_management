import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCartPage extends StatefulWidget {
  const AddCartPage({Key? key}) : super(key: key);

  @override
  State<AddCartPage> createState() => _AddCartPageState();
}

class _AddCartPageState extends State<AddCartPage> {
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
                      flex: 3,
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
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 5),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 27,
                            width: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Warder',
                                style: GoogleFonts.kolkerBrush(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightGreenAccent[700],
                                    fontSize: 30),
                              ),
                              TextSpan(
                                text: 'er',
                                style: GoogleFonts.kolkerBrush(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white60,
                              size: 25,
                            ))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'images/girls2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Voluminous lyocell-blend dress',
                      style: myStyle(20, FontWeight.bold, Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '18K Gray Black',
                              style:
                                  myStyle(16, FontWeight.normal, Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Preview with;',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 14),
                                  ),
                                  TextSpan(
                                    text: ' Oval 2ct',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.lightGreenAccent[700],
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: myStyle(14, FontWeight.bold,
                                Colors.lightGreenAccent[700]!),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green.withOpacity(0.3)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$64.95',
                                      style: myStyle(
                                          21, FontWeight.bold, Colors.black),
                                    ),
                                    Text(
                                      '\$04.95',
                                      style: myStyle(
                                          15, FontWeight.bold, Colors.red),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 10,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Size- The model is 173cm/5\'8\"" and wears o\nComposition-Shell: Lyacell 64%, Polyamide\nPolyester 100%',
                                      style: myStyle(
                                          10, FontWeight.normal, Colors.black),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Select your size",
                            fillColor: Colors.white,
                            suffixIcon:
                                Icon(Icons.keyboard_arrow_down_outlined)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      label: Text(
                        'Add To Bag',
                        style: myStyle(16, FontWeight.normal, Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.black,
                          minimumSize: Size(double.infinity, 45)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
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

myStyle(double size, FontWeight weight, Color clr) {
  return TextStyle(fontSize: size, fontWeight: weight, color: clr);
}
