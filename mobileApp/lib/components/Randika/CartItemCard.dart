import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/cartItems.dart';
import 'package:singer_sl/components/Randika/counter.dart';

class CartItemCard extends StatelessWidget {
  final CartProduct product;
  final Function press;

  const CartItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Container(
        child: Container(
          width: 500,
          height: 200,
          decoration: BoxDecoration(
            // color: product.color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      width: 40,
                      height: 190,
                      // color: Colors.red,
                      child: Align(
                        alignment: AlignmentDirectional(-0.95, -0.8),
                        child: IconButton(
                            icon: SvgPicture.asset(
                              "assets/icons/iconmonstr-checkbox-6.svg",
                              // color: Colors.white,
                              height: 100,
                              width: 100,
                            ),
                            onPressed: () => {}),
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 190,
                    // color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin, vertical: kDefaultPaddin),
                      child: Image.asset(
                        product.image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional(0, -1),
                    height: 190,
                    width: 170,
                    // color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 170,
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPaddin / 2),
                              // color: Colors.brown,
                              child: Text(
                                product.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 170,
                              // color: Colors.brown,
                              child: Text(
                                "Rs.${product.price.toString()}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 180,
                                  // color: Colors.brown,
                                  child: Counter(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 50,
                                    // color: Colors.red,
                                    child: IconButton(
                                        icon: SvgPicture.asset(
                                          "assets/icons/trash-bin.svg",
                                          // color: Colors.white,
                                          height: 100,
                                          width: 100,
                                        ),
                                        onPressed: () => {})),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
