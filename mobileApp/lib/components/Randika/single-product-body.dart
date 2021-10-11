import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/addToCart.dart';
import 'package:singer_sl/components/Randika/color&size.dart';
import 'package:singer_sl/components/Randika/counter.dart';
import 'package:singer_sl/components/Randika/description.dart';
import 'package:singer_sl/components/Randika/product_tile.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';

class SingleProductBody extends StatelessWidget {
  final Product product;
  const SingleProductBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(top: 10, left: 10),
                  // height: 600,
                  decoration: BoxDecoration(
                      color: Color(0xFFECEFF1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      AddToCart(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Counter(),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                    ],
                  ),
                ),
                ProductTile(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
