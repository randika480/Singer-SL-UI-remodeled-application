// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/profileBackground.dart';
import 'package:singer_sl/components/Adithya/profileOptions.dart';
import 'package:singer_sl/components/Adithya/profilePicture.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ProfileBackground(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
            ProfilePicture(size: size),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Adithya Kahawanugoda",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const Text(
              "adithyakahawanugoda@gmail.com",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              child: ProfileOptions(size: size),
            )
          ],
        ),
      ),
    );
  }
}
