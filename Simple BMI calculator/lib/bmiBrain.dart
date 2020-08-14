import 'dart:math';

class BMIbrain {
  BMIbrain(this.ht, this.wt);

  int ht;
  int wt;
  double _bmi;
  String calcBMI() {
    _bmi = wt / pow(ht / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String resultBMI() {
    if (_bmi >= 25)
      return 'overweight';
    else if (_bmi >= 18.5)
      return 'normal';
    else
      return 'underweight';
  }

  String interpretationBMI() {
    if (_bmi >= 25)
      return 'You have higher body weight. Exercise more often :)';
    else if (_bmi >= 18.5)
      return 'You have normal body weight. Good job keep it up! :)';
    else
      return 'You have lower body weight. Eat more food! :)';
  }
}
