import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singer_sl/components/Randika/Cart-Body.dart';
import 'package:singer_sl/models/product.dart';

import '../../constants.dart';

class CartScreen extends StatelessWidget {
  final Product product;

  const CartScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          SizedBox(
            width: kDefaultPaddin / 2,
          )
        ],
      ),
      body: CartBody(
        product: product,
      ),
    );
  }
}
