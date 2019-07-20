import 'dart:math';

class BmiCalculate {
  int height;
  int weight;
  double _bmi;

  BmiCalculate({this.height, this.weight});

  String getBmi() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String result;

    if (_bmi >= 25.0) {
      result = "OVERWIGHT";
    } else if (_bmi > 18.0) {
      result = "NORMAL";
    } else {
      result = "UNDERWIGHT";
    }
    return result;
  }

  String getInterpret() {
    String interpret;

    if (_bmi >= 25) {
      interpret = "MORE EXCERCISE";
    } else if (_bmi > 18) {
      interpret = "DO YOGA";
    } else {
      interpret = "EAT JUNK FOOD";
    }
    return interpret;
  }
}
