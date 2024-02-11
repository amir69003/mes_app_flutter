import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            centerTitle: true,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 27.0,
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
  int nb = 1;
  void nbr() {
    setState(() {
      nb = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Image.asset('images/ball$nb.png'),
          onTap: () {
            setState(() {
              nbr();
            });
          },
        ),
      ),
    );
  }
}
