import 'package:flutter/material.dart';
import 'package:singer_sl/components/Deshani/home_body.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: <Widget>[
                Image.asset(
                  'assets/singer.png',
                  height: 50,
                )
              ],
            ),
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              )
            ]),
        body: HomeBody());
  }
}
