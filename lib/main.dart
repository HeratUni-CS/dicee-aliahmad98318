import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changediceface() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dice'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changediceface();
                  },
                  child: Image.asset('images/dice$leftdicenumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changediceface();
                  },
                  child: Image.asset('images/dice$rightdicenumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
