import 'file:///C:/Users/Ashna/AndroidStudioProjects/bmi-calculator-flutter/lib/contents/constants.dart';
import 'file:///C:/Users/Ashna/AndroidStudioProjects/bmi-calculator-flutter/lib/contents/reusable_box.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmiValue, this.bmiResult, this.bmiInterpretation);
  final String bmiValue;
  final String bmiResult;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text(
                'YOUR RESULT',
                style: kResultPageTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableBox(
                kActiveColour,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiResult.toUpperCase(),
                      style: kResultStringStyle,
                    ),
                    Text(
                      bmiValue,
                      style: kBMIResultStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kBMIInterpretationStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                () {}),
          ),
          BottomButton('RE-CALCULATE', () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
