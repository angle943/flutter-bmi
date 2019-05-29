import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi > 30) {
      return 'Obese';
    } else if (this._bmi >= 25) {
      return 'Overweight';
    } else if (this._bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (this._bmi > 30) {
      return 'You should consider starving yourself.';
    } else if (this._bmi >= 25) {
      return 'You are what I would call \"chunky\".';
    } else if (this._bmi >= 18.5) {
      return 'You\'re pretty average, mate.';
    } else {
      return 'You are underweight. And that\'s not a complement.';
    }
  }

  String getRange() {
    if (this._bmi > 30) {
      return '>30 kg/m2';
    } else if (this._bmi >= 25) {
      return '25 - 30 kg/m2';
    } else if (this._bmi >= 18.5) {
      return '18.5 - 25 kg/m2';
    } else {
      return '<18.5 kg/m2';
    }
  }
}
