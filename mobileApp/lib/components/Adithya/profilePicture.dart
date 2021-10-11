// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width * 0.35,
      width: size.width * 0.35,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile-pic.png'),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: size.width * 0.07,
              width: size.width * 0.07,
              child: ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/icons/Camera-Icon.svg',
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(7),
                    primary: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
