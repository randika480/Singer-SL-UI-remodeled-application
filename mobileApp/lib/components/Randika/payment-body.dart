import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/screens/choose_card.dart';

class PaymentBody extends StatelessWidget {
  final bool isSelected;

  const PaymentBody({Key key, this.isSelected = false}) : super(key: key);
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
                  margin: EdgeInsets.only(top: size.height * 0.55),
                  padding: EdgeInsets.only(top: 10, left: 10),
                  // height: 600,
                  decoration: BoxDecoration(
                      color: Color(0xFFECEFF1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
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
                              height: kDefaultPaddin,
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
                                    SizedBox(
                                      height: kDefaultPaddin,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          color: Colors.red,
                                        ),
                                      ),
                                      width: 180,
                                      height: 40,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0, 0.05),
                                        child: FlatButton(
                                          child: Text(
                                            "Continue",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChooseCard()),
                                            );
                                          },
                                        ),
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
                Container(
                  width: 400,
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Container(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: kDefaultPaddin,
                          ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Select Payment Method",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  RadioButtons(
                                    // color: Colors.black,
                                    isSelected: true,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 300,
                                    child: Text(
                                      "CREDIT/DEBIT CARDS OUTRIGHT PURCHASE",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  RadioButtons(
                                    color: Colors.red,
                                    isSelected: false,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 300,
                                    child: Text(
                                      "CREDIT CARD EASY INSTALLMENTS (EASY EMI)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  RadioButtons(
                                    // color: Colors.black,
                                    isSelected: true,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 300,
                                    child: Text(
                                      "SAMPATH VISHWA / FRIMI",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPaddin * 2,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  RadioButtons(
                                    //color: Colors.red,
                                    isSelected: true,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 300,
                                    child: Text(
                                      "CASH ON DELIVERY",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPaddin * 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    // Container(
    //   width: 400,
    //   child: Align(
    //     alignment: AlignmentDirectional(0, 0.05),
    //     child: Container(
    //       width: 350,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: <Widget>[
    //           SizedBox(
    //             height: kDefaultPaddin * 4,
    //           ),
    //           Container(
    //               child: Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: <Widget>[
    //               Text(
    //                 "Payment Method",
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.red,
    //                   fontSize: 30,
    //                 ),
    //               ),
    //             ],
    //           )),
    //           SizedBox(
    //             height: kDefaultPaddin * 2,
    //           ),
    //           Row(
    //             children: <Widget>[
    //               Column(
    //                 children: <Widget>[
    //                   RadioButtons(
    //                     color: Colors.red,
    //                     isSelected: false,
    //                   ),
    //                 ],
    //               ),
    //               Column(
    //                 children: <Widget>[
    //                   Container(
    //                     width: 300,
    //                     child: Text(
    //                       "CREDIT/DEBIT CARDS OUTRIGHT PURCHASE",
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: kDefaultPaddin * 2,
    //           ),
    //           Row(
    //             children: <Widget>[
    //               Column(
    //                 children: <Widget>[
    //                   RadioButtons(
    //                     // color: Colors.black,
    //                     isSelected: true,
    //                   ),
    //                 ],
    //               ),
    //               Column(
    //                 children: <Widget>[
    //                   Container(
    //                     width: 300,
    //                     child: Text(
    //                       "CREDIT CARD EASY INSTALLMENTS (EASY EMI)",
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: kDefaultPaddin * 2,
    //           ),
    //           Row(
    //             children: <Widget>[
    //               Column(
    //                 children: <Widget>[
    //                   RadioButtons(
    //                     // color: Colors.black,
    //                     isSelected: true,
    //                   ),
    //                 ],
    //               ),
    //               Column(
    //                 children: <Widget>[
    //                   Container(
    //                     width: 300,
    //                     child: Text(
    //                       "SAMPATH VISHWA / FRIMI",
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: kDefaultPaddin * 2,
    //           ),
    //           Row(
    //             children: <Widget>[
    //               Column(
    //                 children: <Widget>[
    //                   RadioButtons(
    //                     //color: Colors.red,
    //                     isSelected: true,
    //                   ),
    //                 ],
    //               ),
    //               Column(
    //                 children: <Widget>[
    //                   Container(
    //                     width: 300,
    //                     child: Text(
    //                       "CASH ON DELIVERY",
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             height: kDefaultPaddin * 4,
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               Container(
    //                 decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(25),
    //                   border: Border.all(
    //                     color: Colors.red,
    //                   ),
    //                 ),
    //                 width: 200,
    //                 height: 40,
    //                 child: Align(
    //                   alignment: AlignmentDirectional(0, 0.00),
    //                   child: FlatButton(
    //                     child: Text(
    //                       "Continue",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white,
    //                         fontSize: 25,
    //                       ),
    //                     ),
    //                     // onPressed: () => Navigator.push(
    //                     //       context,
    //                     //       MaterialPageRoute(
    //                     //           builder: (context) => Payment(
    //                     //                 product: product,
    //                     //               )),
    //                     //     )
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

class RadioButtons extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const RadioButtons({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? color : Colors.transparent,
          //border: Border.all(color: isSelected ? color : Colors.transparent)
          border: Border.all(color: Colors.red)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
