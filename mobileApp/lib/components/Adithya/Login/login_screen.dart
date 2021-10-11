import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      resizeToAvoidBottomInset: false,
    );
  }
}
