// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';

class ProfileBackground extends StatelessWidget {
  final Widget child;
  const ProfileBackground({
    Key key,
     this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              appPrimarylightColor,
              Colors.white,
            ]),
      ),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        child,
      ]),
    );
  }
}
