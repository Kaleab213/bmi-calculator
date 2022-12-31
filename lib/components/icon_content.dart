import 'package:flutter/material.dart';
import '../constants.dart';

const gapHeight = 15.0;
const iconSize = 80.0;

class maleFemaleWidget extends StatelessWidget {
  maleFemaleWidget({required this.genderIcon, required this.genderText});

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: iconSize,
        ),
        SizedBox(
          height: gapHeight,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
