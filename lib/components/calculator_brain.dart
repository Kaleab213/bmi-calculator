import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _userBMI = 1.0;

  String CalculateBMI() {
    _userBMI = weight / pow(height / 100, 2);
    return _userBMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_userBMI >= 25) {
      return 'OverWeight';
    } else if (_userBMI > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_userBMI >= 25) {
      return 'you have a higher than normal body weight. try to eat healthy and exercise more';
    } else if (_userBMI > 18.5) {
      return 'You have a normal body weight. Good job! Keep the hard work!';
    } else {
      return 'You have a lower than normal body weight. try to add some more weight.';
    }
  }
}
