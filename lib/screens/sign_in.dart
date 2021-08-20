import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('SIGN IN'),
      ),
      body: Column(
        children: [
          Text(
            'Welcome back',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
