import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.iconText});

  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          this.icon,
          size: kIconSize,
        ),
        SizedBox(height: kIconSpacing),
        Text(
          this.iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
