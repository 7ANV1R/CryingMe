import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(CryingMe());
}

class CryingMe extends StatefulWidget {
  @override
  _CryingMeState createState() => _CryingMeState();
}

class _CryingMeState extends State<CryingMe> {
  int picnum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                picnum = Random().nextInt(2);
                print('Clicked');
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/pic$picnum.jpg',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Click on the picture until you see me crying!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
