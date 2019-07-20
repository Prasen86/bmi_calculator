import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function ontap;

  CustomButton({this.label, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: calcButtonColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        height: calcButtonHeight,
        child: Center(
          child: Text(
            label,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
