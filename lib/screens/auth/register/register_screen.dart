import 'package:flutter/material.dart';

import 'package:jobid/screens/auth/register/components/body.dart';
import 'package:jobid/size_config.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
