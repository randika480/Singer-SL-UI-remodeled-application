import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/profileBody.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120),
      color: Colors.amber,
      child: const Scaffold(
        body: ProfileBody(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
