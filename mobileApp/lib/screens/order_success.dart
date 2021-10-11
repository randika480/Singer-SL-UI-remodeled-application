import 'package:flutter/material.dart';
import 'package:singer_sl/components/Deshani/home.dart';
// import 'package:singer_sl/screens/homepage.dart';
import 'package:singer_sl/screens/order_data.dart';

class OrderSuccess extends StatelessWidget {
  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: Color(0xFFD61717),
    textStyle: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    side: BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  );

  final ButtonStyle btnstyle = ElevatedButton.styleFrom(
    primary: Color(0xFF2E3134),
    textStyle: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    side: BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          title: Row(
            children: <Widget>[
              Image.network(
                'https://i.ibb.co/3Fy7X82/logo.png',
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
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'Thank you for your \norder',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFD61717),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Congratulations!!! Your order placed successfully. Order ID:#1234567',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Image.asset(
                  'assets/images/orderSuccess.png',
                  width: 300,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text('Countinue Shopping'),
                    style: style,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrderData()),
                      );
                    },
                    child: Text('View Order Data'),
                    style: btnstyle,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
