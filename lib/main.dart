import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/login.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage()));
}

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Hexcolor('#6BBC9A')])),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 150,
        ),
        SizedBox(height: 15),
        Text(
          'Loading...',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        )
      ],
        ),
      ),
    );
  }
}
