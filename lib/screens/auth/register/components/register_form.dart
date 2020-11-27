import 'package:flutter/material.dart';
import 'package:jobid/components/button.dart';
import 'package:jobid/size_config.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final double textFieldRadius = 8.0;
  FocusNode focusNode;
  String nama;
  String email;
  String password;
  String confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          emailTextField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          namaTextField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          passwordTextField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          confirmpasswordTextField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: 'REGISTER',
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

  TextFormField namaTextField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (nama) => this.nama = nama,
      onChanged: (nama) {
        if (nama.isEmpty) {
          return 'Nama anda kosong!.';
        } 
      },
      validator: (nama) {
        if (nama.isEmpty) {
          return 'Nama Anda kosong!.';
        } 
        return null;
      },
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldRadius)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(textFieldRadius)),
          labelText: 'Nama',
          hintText: 'Nama anda',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(Icons.people)),
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

  TextFormField confirmpasswordTextField() {
    return TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onSaved: (confirmpassword) => this.confirmpassword = confirmpassword,
        onChanged: (confirmpassword) {
          if (confirmpassword.isEmpty) {
            return 'Password Anda Kosong';
          } else if (confirmpassword.length < 8) {
            return 'Password minimal 8 karakter';
          }
        },
        validator: (confirmpassword) {
          if (confirmpassword.isEmpty) {
            return 'Password Anda Kosong!';
          } else if (confirmpassword.length < 8) {
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
