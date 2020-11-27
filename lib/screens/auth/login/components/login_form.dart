import 'package:flutter/material.dart';
import 'package:jobid/components/button.dart';
import 'package:jobid/size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final double textFieldRadius = 8.0;
  FocusNode focusNode;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          emailTextField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordTextField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: 'LOGIN',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // @TODO: Move to dashboard.
                print('Should move to dashboard');
              }
            },
          )
        ]));
  }

  bool validateEmail(email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  TextFormField emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (email) => this.email = email,
      onChanged: (email) {
        if (email.isEmpty) {
          return 'Alamat email anda kosong!.';
        } else if (!validateEmail(email)) {
          return 'Alamat email Anda tidak valid!';
        }
      },
      validator: (email) {
        if (email.isEmpty) {
          return 'Alamat email Anda kosong!.';
        } else if (!validateEmail(email)) {
          return 'Alamat email Anda tidak valid!';
        }

        return null;
      },
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldRadius)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldRadius)),
          labelText: 'Email',
          hintText: 'Alamat email anda',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(Icons.email)),
    );
  }

  TextFormField passwordTextField() {
    return TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onSaved: (password) => this.password = password,
        onChanged: (password) {
          if (password.isEmpty) {
            return 'Password Anda Kosong';
          } else if (password.length < 8) {
            return 'Password minimal 8 karakter';
          }
        },
        validator: (password) {
          if (password.isEmpty) {
            return 'Password Anda Kosong!';
          } else if (password.length < 8) {
            return 'Password minimal 8 karakter';
          }

          return null;
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(textFieldRadius)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(textFieldRadius)),
            labelText: 'Password',
            hintText: 'Password anda',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Icon(Icons.lock)));
  }
}
