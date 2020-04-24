import 'package:flutter/material.dart';
import 'screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // use the default dark theme with some of our overrides
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555), // same w/ transparency
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 25)),
        primaryColor: Color(0xFF080B22),
        scaffoldBackgroundColor: Color(0xFF080B22),
      ),
      home: InputPage(),
    );
  }
}
