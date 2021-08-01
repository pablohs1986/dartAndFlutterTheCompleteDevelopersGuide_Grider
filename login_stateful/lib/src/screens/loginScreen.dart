import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validationMixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: 'Email', hintText: "you@example.com"),
      validator: validateEmail,
      onSaved: (value) {
        email = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(labelText: 'Password', hintText: "Password"),
      validator: validatePassword,
      onSaved: (value) {
        password = value!;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('Login'),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
        }
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
        primary: Colors.white,
        textStyle: TextStyle(fontSize: 18),
        backgroundColor: Colors.blue,
      ),
    );
  }

  // Widget _loginButton() {
  //   return Container(
  //       margin: EdgeInsets.only(top: 30),
  //       child: ElevatedButton(
  //           child: Text('Login'),
  //           onPressed: () {
  //             if (_formKey.currentState!.validate()) {
  //               Navigator.pushNamed(context, '/home');
  //             }
  //           },
  //           style: TextButton.styleFrom(
  //             padding: EdgeInsets.all(16.0),
  //             primary: Colors.white,
  //             textStyle: TextStyle(fontSize: 18),
  //             backgroundColor: Colors.blue,
  //           )));
  // }
}
