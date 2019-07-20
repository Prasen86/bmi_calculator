import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'custom_button.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpret;

  ResultPage(
      {@required this.result, @required this.bmi, @required this.interpret});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.satellite),
        title: Text("BMI CALCULATOR"),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "YOUR RESULTS",
                  style: headerTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmi,
                      style: styleNumbers,
                    ),
                    Text(
                      interpret,
                      style: headerTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          CustomButton(
            label: "RE-CALCULATE",
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
