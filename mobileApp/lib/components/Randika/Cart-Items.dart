import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singer_sl/constants.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'counter.dart';

class CartItems extends StatefulWidget {
  const CartItems({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CartItems> {
  bool value = false;
  String stringResponse;
  List ListResponse;
  Map mapResponse;
  List ListOFCart;
  int selectedIndex = 0;

  Future fetchdata() async {
    http.Response response;
    response = await http
        .get(Uri.parse('http://10.0.2.2:6500/matrix/api/cart/getCart'));

    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        ListOFCart = mapResponse['cart'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
        child: SizedBox(
          height: 350,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: ListOFCart == null ? 0 : ListOFCart.length,
              itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                    child: Container(
                      child: Container(
                        width: 500,
                        height: 200,
                        decoration: BoxDecoration(
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
                                      alignment:
                                          AlignmentDirectional(-0.95, -0.8),
                                      // child: IconButton(
                                      //     icon: SvgPicture.asset(
                                      //       "assets/icons/iconmonstr-checkbox-6.svg",
                                      //       // color: Colors.white,
                                      //       height: 100,
                                      //       width: 100,
                                      //     ),
                                      //     onPressed: () => {}
                                      //     ),
                                      child: Checkbox(
                                        value: this.value,
                                        onChanged: (bool value) {
                                          setState(() {
                                            this.value = value;
                                          });
                                        },
                                      ),
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
                                        horizontal: kDefaultPaddin,
                                        vertical: kDefaultPaddin),
                                    child: Image.network(
                                      ListOFCart[index]['imageUrl'],
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
                                              ListOFCart[index]["name"],
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
                                              "Rs.${ListOFCart[index]["price"]}",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                  )

              // CartItemCard(
              //       product: ListOFCart[index],
              //       press: () => Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => SingleProduct(
              //                     product: products[index],
              //                   ))),
              //     )
              ),
        ));
  }
}
