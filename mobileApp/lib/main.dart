import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:singer_sl/components/Adithya/Welcome/welcome_screen.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/products.dart';
import 'package:singer_sl/screens/index/index.dart';
import 'package:provider/provider.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Products(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SingerSL',
          theme: ThemeData(
            primaryColor: appPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: Scaffold(
            body:
                WelcomeScreen(), //after loging sucessfully, redirect to the index page
          ),
        ));
  }
}
