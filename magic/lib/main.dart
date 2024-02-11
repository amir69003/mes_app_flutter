// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Magic(),
        ),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  const Magic({super.key});

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
