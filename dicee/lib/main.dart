// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceNumber = 2;
  int leftDiceNumber = 3;
  void pressed() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onTap: () {
                  setState(() {
                    pressed();
                  });
                },
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onTap: () {
                  setState(() {
                    pressed();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
