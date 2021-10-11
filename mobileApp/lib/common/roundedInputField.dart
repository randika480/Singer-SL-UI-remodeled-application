// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:singer_sl/common/textFieldContainer.dart';
import 'package:singer_sl/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChnage;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChnage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputFieldContainer(
      child: TextField(
        onChanged: onChnage,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: appPrimaryColor,
            ),
            border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}
