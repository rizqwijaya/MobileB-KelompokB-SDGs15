import 'package:flutter/material.dart';

import 'package:jobid/screens/auth/login/components/login_form.dart';
import 'package:jobid/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.09),
                  CircleAvatar(
                    minRadius: 35,
                    maxRadius: 70,
                    backgroundColor: Colors.blueGrey[50],
                    child: Image.asset('assets/images/splash_logo.png'),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Text('Selamat Datang di SpidyLib',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(22),
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  LoginForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Belum punya akun?',
                      ),
                      SizedBox(width: SizeConfig.screenWidth * 0.05),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
