import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.couleur, this.cardChild, this.onPress});
  final Color couleur;
  final Widget?
      cardChild; // il faut ajouter un point d'interogation apres le child parce que sinon
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
