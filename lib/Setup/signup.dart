import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Setup/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email, _password; //_ makes the variable private
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (input){
              if(input.isEmpty){
                return "Field cannot be empty";
              }
            },
            onSaved: (input) => _email = input,
            decoration: InputDecoration(
                labelText: 'Email'
            ),
          ),
          TextFormField(
            validator: (input){
              if(input.isEmpty || input.length < 6){
                return "Please enter at least 6 characters";
              }
            },
            onSaved: (input) => _password = input,
            decoration: InputDecoration(
                labelText: 'Password'
            ),
            obscureText: true,
          ),
          RaisedButton(onPressed: signUp,
            child: Text('Sign Up'),)
        ],
      ),
    ),
    );
  }

  Future<void> signUp() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        // Initialize FlutterFire
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        // user.sendEmailVerification();
        //display that verification email has been sent
        // Navigator.of(context).pop();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }catch(e){
        print(e.message);
      }

    }
  }
}
