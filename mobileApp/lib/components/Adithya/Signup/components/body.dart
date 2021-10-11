import 'package:flutter/material.dart';
import 'package:singer_sl/common/roundedInputField.dart';
import 'package:singer_sl/common/textFieldContainer.dart';
import 'package:singer_sl/components/Adithya/Login/login_screen.dart';
import 'package:singer_sl/components/Adithya/Signup/components/background.dart';
import 'package:singer_sl/constants.dart';

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
            "Let’s get started!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Create an account and enjoy all the features.",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          RoundedInputField(
            hintText: "Username",
            icon: Icons.person,
            onChnage: (value) {},
          ),
          RoundedInputField(
            hintText: "Email",
            icon: Icons.email,
            onChnage: (value) {},
          ),
          const InputFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
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
          const InputFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirm Password",
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
            onPressed: () {},
            child: const Text('SIGNUP'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Already have an account?",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  " Login",
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
