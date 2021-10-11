// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/ManageAddress/manage_address_screen.dart';
//import 'package:singer_sl/components/Adithya/ManageProfile/manage_profile_screen.dart';
import 'package:singer_sl/constants.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({
    Key key,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return ManageProfileScreen();
          //     },
          //   ),
          // );
        },
        child: Row(
          children: [
            const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'Profile Information',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(
              Icons.shop,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'Order History',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'My Wishlist',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ManageAddress();
              },
            ),
          );
        },
        child: Row(
          children: [
            const Icon(
              Icons.description_outlined,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'Manage Address',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(
              Icons.description_outlined,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'My Loyalty',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: size.width * 0.1,
            ),
            const Text(
              'Logout',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(15),
          primary: appPrimaryColor,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ]);
  }
}
