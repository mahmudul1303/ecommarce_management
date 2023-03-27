import 'dart:math';

import 'package:flutter/material.dart';

class Page3Demo extends StatelessWidget {
  const Page3Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'images/girls1.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Transform.rotate(
                  angle: pi / -14,
                  child: Container(
                    color: Colors.white.withOpacity(0.6),
                    height: 1200,
                    width: 200,
                  ),
                ),
              ],
            ),
            // top: 200,
            bottom: -100, left: -150,
          ),
          Positioned(
            child: Column(
              children: [
                Transform.rotate(
                  angle: pi / -14,
                  child: Container(
                    color: Colors.white.withOpacity(0.6),
                    height: 1200,
                    width: 200,
                  ),
                ),
              ],
            ),
            // top: 200,
            top: -100, right: -150,
          ),
        ],
      ),
    );
  }
}
