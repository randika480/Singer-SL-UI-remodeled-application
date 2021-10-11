import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/Signup/components/body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      resizeToAvoidBottomInset: false,
    );
  }
}
