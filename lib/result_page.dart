import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'custom_button.dart';

class ResultPage extends StatelessWidget {
  String result;
  String bmi;
  String interpretation;

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
                      "NORMAL",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "180",
                      style: styleNumbers,
                    ),
                    Text(
                      "Interpretation",
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
