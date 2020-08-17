import 'package:flutter/material.dart';
import 'package:bmiuda/constants.dart';
import 'package:bmiuda/components/reusable_card.dart';
import 'package:bmiuda/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR BangAmek'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'HASIL ANDA',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'ULANGI?'),
        ],
      ),
    );
  }
}
