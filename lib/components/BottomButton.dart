import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Text buttonTitle;
  final Function onTap;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: buttonTitle),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
