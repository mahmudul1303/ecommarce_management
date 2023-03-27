import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ui/item_page.dart';
import 'package:e_commerce_ui/splash_screen/page1_demo.dart';
import 'package:e_commerce_ui/splash_screen/page2_demo.dart';
import 'package:e_commerce_ui/splash_screen/page3_demo.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPageDemo extends StatefulWidget {
  MainPageDemo({Key? key}) : super(key: key);

  @override
  State<MainPageDemo> createState() => _MainPageDemoState();
}

class _MainPageDemoState extends State<MainPageDemo> {
  int activeIndex = 0;
  List<Widget> pages = [Page1Demo(), Page2Demo(), Page3Demo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
            items: pages,
            options: CarouselOptions(
                initialPage: 0,
                height: double.infinity,
                autoPlay: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                })),
        Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Container(),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NEW',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'FASION',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 51, 3, 135)),
                          ),
                        ],
                      ),
                      Text(
                        'Agros is the #1 free App \nfor rest in nature',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              buildIndicator(),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ItemPage()));
                            },
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent[700],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Let's go",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Divider(
                            height: 2,
                            thickness: 4,
                            color: Colors.grey,
                            indent: 100,
                            endIndent: 100,
                          ))
                    ],
                  ),
                )),
          ],
        ),
      ]),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(
            dotHeight: 6,
            dotWidth: 20,
            dotColor: Colors.grey,
            activeDotColor: Colors.lightGreenAccent[700]!),
        activeIndex: activeIndex,
        count: pages.length);
  }
}
