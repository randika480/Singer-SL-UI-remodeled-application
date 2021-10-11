import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singer_sl/components/Shevon/checkpointmodal.dart';
import 'package:singer_sl/components/Shevon/custom_rect_tween.dart';
import 'package:singer_sl/components/Shevon/registermodal.dart';
import 'hero_dialog_route.dart';

const String _heroAddTodo = 'add-todo-hero';

class LoyaltyPage extends StatefulWidget {
  const LoyaltyPage({Key key}) : super(key: key);

  @override
  _LoyaltyPageState createState() => _LoyaltyPageState();
}

class _LoyaltyPageState extends State<LoyaltyPage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        elevation: 8,
        primary: Colors.white,
        shadowColor: Colors.black87,
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: Colors.black12)));
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: style,
                                  onPressed: () {},
                                  child: Text('SINGER Customer Loyalty Program',
                                      style: (GoogleFonts.getFont('Quantico',
                                          fontSize: 18,
                                          color: Colors.red,
                                          fontWeight: FontWeight.w600))),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: style,
                                    onPressed: () {},
                                    child: Text('Easy Payment Schemes',
                                        style: (GoogleFonts.getFont('Quantico',
                                            fontSize: 18,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: style,
                                    onPressed: () {},
                                    child: Text(
                                        'Senasuma Extended Warranty Scheme',
                                        style: (GoogleFonts.getFont('Quantico',
                                            fontSize: 18,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: style,
                                    onPressed: () {},
                                    child: Text('SINGER Express Pay',
                                        style: (GoogleFonts.getFont('Quantico',
                                            fontSize: 18,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600))),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black26,
                              offset: Offset(5, 2),
                              spreadRadius: 5,
                            )
                          ],
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'SINGER Customer Loyalty Program',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30, 15, 15, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              child: Hero(
                                                tag: _heroAddTodo,
                                                createRectTween: (begin, end) {
                                                  return CustomRectTween(
                                                      begin: begin, end: end);
                                                },
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    fixedSize: Size(0, 130),
                                                    elevation: 8,
                                                    primary:
                                                        Colors.indigo.shade900,
                                                    shadowColor: Colors.black87,
                                                    textStyle: const TextStyle(
                                                        fontSize: 20),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        HeroDialogRoute(
                                                            builder: (context) {
                                                      return AddTodoPopupCard();
                                                    }));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 12, 8, 0),
                                                    child: Column(
                                                      children: [
                                                        Text('JOIN',
                                                            style: (TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                        Text(
                                                            ' The Singer Customer Loyalty Program',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: (TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17))),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 30, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              child: Hero(
                                                tag: _heroAddTodo,
                                                createRectTween: (begin, end) {
                                                  return CustomRectTween(
                                                      begin: begin, end: end);
                                                },
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    fixedSize: Size(0, 130),
                                                    elevation: 8,
                                                    primary:
                                                        Colors.indigo.shade900,
                                                    shadowColor: Colors.black87,
                                                    textStyle: const TextStyle(
                                                        fontSize: 20),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        HeroDialogRoute(
                                                            builder: (context) {
                                                      return CheckPoint();
                                                    }));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 14, 5, 0),
                                                    child: Column(
                                                      children: [
                                                        Text('CHECK',
                                                            style: (TextStyle(
                                                                height: 1.5,
                                                                color:
                                                                    Colors.red,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                        Text(
                                                            'Your  Loyalty Points Balance',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: (TextStyle(
                                                                height: 1.2,
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17))),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Singer Customer Loyalty Programme is purely benefit-driven loyalty programme that is comprehensive and hassle-free.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   It is a point-based reward programme where 1 Loyalty Point is equal to 1 Rupee (1 Loyalty Point = Rs. 1/=) and these points are automatically added with each purchase you make from SINGER',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Singer Loyalty Customers can earn Loyalty points through Cash and Hire purchase sales as well as when paying utility and credit card bills through Singer’s Express Pay Counters.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Singer Loyalty Customers are rewarded with 1% of loyalty point for each monthly installments paid on Easy payment Schemes.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Customers can redeem their Loyalty points through every nook and corner of the country against their purchase.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Points can be redeemed through the card or by mobile platform with OTP redemption mechanism.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Singer Loyalty Customers are eligible for special price offers on consumer durables.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Newsletters on new products and services will be introduced to our valuable Loyalty Customers on regular basis.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 15, 20, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      '\u2022   Customers shopping at any of Singer’s retail outlets island-wide are eligible to register with the Singer Customer Loyalty Programme.',
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(fontSize: 17, height: 1.4),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/* card */
