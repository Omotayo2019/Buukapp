import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text('Login')),
          body: Column(children: <Widget>[
            Container(
              color: Colors.green[300],
              child: Text('Welcome to Login Page'),
            ),
            Container(
              color: Colors.yellow[300],
              child: Text('Welcome to Login Page'),
            ),
            Container(
              width: 400,
              color: Colors.blue[300],
              child: Text('Welcome to Login Page3'),
            ),
          ])),
    );
  }
}
