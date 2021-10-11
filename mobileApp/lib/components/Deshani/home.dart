import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:singer_sl/components/Deshani/home_body.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120),
      color: Colors.amber,
      child: Scaffold(
        body: HomeBody(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
