import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[700],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask me anything'),
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
          ),
          backgroundColor: Colors.deepPurple[700],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeBall();
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }
}
