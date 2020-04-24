import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onTapFunction});

  final Color color;
  final Widget cardChild;
  final Function onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction, // will call the function it was passed in
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: this.color,
        ),
      ),
    );
  }
}
