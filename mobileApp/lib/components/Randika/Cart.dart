import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singer_sl/screens/cart/Cart.dart';

class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5000,
      width: 5000,
      color: Colors.blue,
      child: const Scaffold(
        body: CartScreen(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
