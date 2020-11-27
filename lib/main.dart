import 'package:flutter/material.dart';

import 'package:jobid/routes.dart';
import 'package:jobid/screens/splash/splash_screen.dart';
import 'package:jobid/theme.dart';

void main() => runApp(JobApp());

class JobApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
