import 'package:flutter/material.dart';

import 'package:jobid/constants.dart';
import 'package:jobid/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          cAppTitle,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: cPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
