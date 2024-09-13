import 'package:flutter/material.dart';
import 'dart:math';

void main() {
    return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 1, 44, 79),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var imgIdx = 1;

  void changeItUp () {
    setState(() {
      imgIdx = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton(
          onPressed: () {
            changeItUp();
          },
          child: Image.asset('images/ball$imgIdx.png'),
          ),
      ],
    );
  }
}