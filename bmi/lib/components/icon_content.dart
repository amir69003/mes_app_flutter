import 'package:flutter/material.dart';

import '../constant.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icone, required this.title});
  final IconData icone;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
