import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.colour, this.childCard, this.onClick});

  final Color colour;
  final Widget childCard;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
