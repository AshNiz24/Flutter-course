import 'Qn.dart';

class QnBrain {
  int _qnum = 0;
  List<Qn> _qnbank = [
    //creating objects
    Qn('Some cats are actually allergic to humans', true),
    Qn('You can lead a cow down stairs but not up stairs.', false),
    Qn('Approximately one quarter of human bones are in the feet.', true),
    Qn('A slug\'s blood is green.', true),
    Qn('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Qn('It is illegal to pee in the Ocean in Portugal.', true),
    Qn('No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Qn('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Qn('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Qn('The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Qn('Google was originally called \"Backrub\".', true),
    Qn('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Qn('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQn() {
    if (_qnum < _qnbank.length - 1) {
      _qnum++;
    }
  }

  String quest() {
    return _qnbank[_qnum].qn;
  }

  bool answer() {
    return _qnbank[_qnum].ans;
  }

  bool isFinished() {
    if (_qnum == _qnbank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _qnum = 0;
  }
}
