import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/Login/login_screen.dart';
import 'package:singer_sl/components/Adithya/Signup/signup_screen.dart';
import 'package:singer_sl/components/Adithya/Welcome/components/background.dart';
import 'package:singer_sl/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // to get height and width of screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/singer-logo.png',
            width: size.width * 0.7,
          ),
          const Text(
            'WELCOME',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                // padding: const EdgeInsets.only(top: 10,bottom: 10,left: 56,right: 56),
                primary: Colors.white,
                backgroundColor: appPrimaryColor,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: const Text('LOGIN'),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              // padding: const EdgeInsets.only(top: 10,bottom: 10,left: 50,right: 50),
              primary: Colors.white,
              backgroundColor: appPrimaryColor,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
            child: const Text('SIGNUP'),
          ),
        ],
      ),
    );
  }
}
