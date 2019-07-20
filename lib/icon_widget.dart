import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData iconData;
  final String label;

  IconWidget({this.iconData, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label),
      ],
    );
  }
}
