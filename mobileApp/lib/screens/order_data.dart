import 'package:flutter/material.dart';
import 'package:singer_sl/components/Deshani/home.dart';
// import 'package:singer_sl/screens/homepage.dart';

class OrderData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final productId = ModalRoute.of(context).settings.arguments as String;
    // final loadedPdt = Provider.of<Products>(context).findById(productId);
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Color(0xFFD61717),
      textStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20),
      side: BorderSide(
        color: Colors.transparent,
        width: 1,
      ),
    );
    return Scaffold(
      appBar: AppBar(
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
            Align(
              alignment: AlignmentDirectional(-0.05, -0.9),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Order Data',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFFD61717),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFEFE),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      color: Color(0xFFDDCFCF),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.98, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 40, 0, 0),
                        child: Text(
                          'Order ID: #1234567',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.2, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Delivery: 22nd September 2021',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'Total: 228,900',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      color: Color(0xFFD1C1C1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.75, -0.15),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Image.network(
                          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-black-select-2020?wid=940&hei=1112&fmt=png-alpha&.v=1604343702000',
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.15, -0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Apple iphone 12\n\nQty   1',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text('Countinue Shopping'),
                  style: style,
                ))
          ],
        ),
      ),
    );
  }
}
