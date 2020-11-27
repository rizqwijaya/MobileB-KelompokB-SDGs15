import 'package:flutter/material.dart';

import 'package:jobid/screens/auth/login/components/body.dart';
import 'package:jobid/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
