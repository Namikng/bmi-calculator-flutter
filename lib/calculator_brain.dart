import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '과체중';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '운동이 좀 더 필요해요!';
    } else if (_bmi > 18.5) {
      return '좋아요!!!';
    } else {
      return '좀 더 먹는게 좋겠어요ㅜㅜ';
    }
  }
}
