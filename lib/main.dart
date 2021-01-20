import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(
              child: Text('Ask me anything!'),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imgMagic8Ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    imgMagic8Ball = Random().nextInt(5) + 1;
                  });
                  print('This is pressed $imgMagic8Ball');
                },
                child: Image.asset(
                  'images/ball$imgMagic8Ball.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
