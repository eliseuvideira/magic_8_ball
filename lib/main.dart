import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> images = [
    Image.asset('images/ball1.png'),
    Image.asset('images/ball2.png'),
    Image.asset('images/ball3.png'),
    Image.asset('images/ball4.png'),
    Image.asset('images/ball5.png'),
  ];
  int number = _random();

  static int _random() {
    return Random().nextInt(5);
  }

  void _randomize() {
    setState(() {
      number = _random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.teal,
      onPressed: () {
        _randomize();
      },
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: images[number],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
