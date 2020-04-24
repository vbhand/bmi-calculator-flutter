import 'dart:math';

class BmiBrain {
  int height; // in cm
  int weight; // in kg
  double _bmi;

  BmiBrain({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return ("Underweight");
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight. Try to exercise more and eat healthy!";
    } else if (_bmi > 18.5) {
      return "You have normal body weight. Good job!";
    } else
      return ("You are underweight! Try eating more.");
  }
}
