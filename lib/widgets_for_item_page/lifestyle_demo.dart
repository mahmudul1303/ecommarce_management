import 'package:e_commerce_ui/add_cart_page.dart';
import 'package:flutter/material.dart';

class LifeStyleDemo extends StatelessWidget {
  const LifeStyleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: double.infinity,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('images/girls6.jpg'),
                      fit: BoxFit.cover)),
              child: Text(
                'LIFESTYLE',
                style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    color: Colors.black87,
                    letterSpacing: 3,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('images/premium.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
