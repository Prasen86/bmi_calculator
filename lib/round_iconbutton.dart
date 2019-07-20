import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onpressed;

  RoundIconButton({this.icon, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: roundButtonColor,
      shape: CircleBorder(),
      constraints: kSizeConstraints,
      child: Icon(icon),
      onPressed: onpressed,
    );
  }
}
