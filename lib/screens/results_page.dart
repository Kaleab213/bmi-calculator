import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmiResult, this.resultText, this.interpretation);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kActiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(resultText.toUpperCase(),
                      textAlign: TextAlign.center, style: kResultTextStyle),
                  Text(bmiResult,
                      textAlign: TextAlign.center, style: kBMITextStyle),
                  Center(
                    child: Text(interpretation,
                        textAlign: TextAlign.center, style: kBodyTextStyle),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
