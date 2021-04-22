import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Setup/signin.dart';
import 'package:flutter_auth/Setup/signup.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(onPressed: signInNavigate,
            child: Text('Sign In'),),
          RaisedButton(onPressed: signUpNavigate,
            child: Text('Sign Up'),)
        ],
      ),
    );
  }

  void signInNavigate(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(), fullscreenDialog: true));
    //fullscreenDialog designs that 'x' in app bar...for if that page is the last of its cycle
  }
  void signUpNavigate(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(), fullscreenDialog: true));
  }
}
