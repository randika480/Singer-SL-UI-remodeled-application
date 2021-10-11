// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';

class InputFieldContainer extends StatelessWidget {
  final Widget child;

  const InputFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: child,
      decoration: BoxDecoration(
          color: appPrimarylightColor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
