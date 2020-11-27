import 'package:flutter/material.dart';

import 'package:jobid/screens/splash/components/body.dart';
import 'package:jobid/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
