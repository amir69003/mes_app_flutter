import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal[900],
          title: Text('I am poor'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/caillou.png'),
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
    ),
  );
}
