import 'package:flutter/material.dart';

import 'package:jobid/size_config.dart';

const cAppTitle = 'WELCOME!!!';
const cPrimaryColor = Color(0xFF2578E2);
const cPrimaryLightColor = Color(0xFFFFECDF);
const cPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF2578E2), Color(0xFF2828E2)],
);
const cSecondaryColor = Color(0xFF979797);
const cTextColor = Color(0xFF757575);
const defaultDuration = Duration(milliseconds: 250);

const cAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: cTextColor),
  );
}
