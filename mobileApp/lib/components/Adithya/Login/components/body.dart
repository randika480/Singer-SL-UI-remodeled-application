import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singer_sl/common/roundedInputField.dart';
import 'package:singer_sl/common/textFieldContainer.dart';
import 'package:singer_sl/components/Adithya/Login/components/background.dart';
import 'package:singer_sl/components/Adithya/Signup/signup_screen.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/screens/index/index.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/singer-logo.png',
            width: size.width * 0.4,
          ),
          const Text(
            "Welcome Back!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Log in to your SINGER account",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          RoundedInputField(
            hintText: "Enter your email",
            icon: Icons.email,
            onChnage: (value) {},
          ),
          const SizedBox(
            height: 10,
          ),
          const InputFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                border: InputBorder.none,
                icon: Icon(
                  Icons.lock,
                  color: appPrimaryColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: appPrimaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                primary: Colors.white,
                backgroundColor: appPrimaryColor,
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Index();
                  },
                ),
              );
            },
            child: const Text('LOGIN'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('or login using'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: appPrimarylightColor),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  height: 20,
                  width: 20,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: appPrimarylightColor),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/google-plus.svg',
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "New to singer?",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  " Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: appPrimaryColor),
                ),
              ),
              const Text(
                " now",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
