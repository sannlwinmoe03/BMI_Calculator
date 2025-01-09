import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiResult,
    required this.bmiText,
    required this.interpretation,
  });

  final String bmiResult;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
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
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(bmiResult, style: kBMITextStyle),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                  onPress: () {}),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE'),
          ],
        ));
  }
}
