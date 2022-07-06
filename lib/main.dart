import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int L_img = Random().nextInt(6) + 1;
  int R_img = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text(
            'MyDice',
            style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Center(
          child:
           Row(
            children: <Widget>[
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {      
                      L_img = 4;
                    });
                    L_img = Random().nextInt(6) + 1;
                    print('this is button 1 $L_img.png');
                  },
                  child: Image.asset('images/dice$L_img.png'),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      R_img = Random().nextInt(6) + 1;
                    });
                    print('this is dice 2 $R_img.png');
                  },
                  child: Image.asset('images/dice$R_img.png'),
                ),
              ),
              // SizedBox(
              //   height: 30.0,
              // ),
            ],
          ),
          
          
        ),
      ),
    );
  }
}
