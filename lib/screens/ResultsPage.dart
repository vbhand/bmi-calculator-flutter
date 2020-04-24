import 'package:bmi_calculator/BmiBrain.dart';
import 'package:flutter/material.dart';
import '../components/ReusableCard.dart';
import '../components/BottomButton.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final int height; // cms
  final int weight; // kg

  ResultsPage({@required this.height, @required this.weight});

  @override
  Widget build(BuildContext context) {
    BmiBrain brain = BmiBrain(height: height, weight: weight);
    String bmi = brain.getBMI();
    String result = brain.getResult();
    String interpretation = brain.getInterpretation();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(result, style: kLargeTextBoldStyle))),
          Expanded(
            flex: 5, // take 5 times the space
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(result.toUpperCase(), style: kBmiStateTextStyle),
                  Text(
                    bmi,
                    style: kBmiNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBmiBottomTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonTitle: Text('Re-calculate', style: kLargeTextBoldStyle),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
