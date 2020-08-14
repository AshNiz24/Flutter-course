import 'package:flutter/material.dart';
import '../contents/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.bottomButtonText, this.onTap);
  final String bottomButtonText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xffEB1555),
        width: double.infinity,
        height: kBottomContainerHt,
        margin: EdgeInsets.only(top: 5),
        child: Center(
          child: Text(
            bottomButtonText,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
