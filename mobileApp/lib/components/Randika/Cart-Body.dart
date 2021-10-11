import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/Cart-Items.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';
import 'package:singer_sl/screens/paymentMethods/payment-screen.dart';

class CartBody extends StatelessWidget {
  final Product product;
  const CartBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: kDefaultPaddin,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 2),
            child: Text(
              "CART",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.47),
                  padding: EdgeInsets.only(top: 10, left: 10),
                  //  height: 600,
                  decoration: BoxDecoration(
                      color: Color(0xFFECEFF1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Order Summary (1 item) ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPaddin / 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: kDefaultPaddin / 15,
                                  width: 390,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPaddin / 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Item(s) Price   : ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: kDefaultPaddin / 2,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Rs.8907.00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPaddin / 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Delivery : ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: kDefaultPaddin / 2,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "FREE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPaddin,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Grand Total     : ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 21,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: kDefaultPaddin / 2,
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        "Rs.8907.00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 21,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPaddin / 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          color: Color(0xFFFF1744),
                                        ),
                                      ),
                                      width: 160,
                                      height: 40,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0, 0.05),
                                        child: FlatButton(
                                            child: Text(
                                              "Place Order",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            onPressed: () => Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Payment(
                                                            product: product,
                                                          )),
                                                )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CartItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
