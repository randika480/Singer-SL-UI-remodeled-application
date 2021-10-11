import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singer_sl/screens/loyaltyprogramscreen/loyaltyprogram.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key key,
    @required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black54),
        child: SizedBox(
          width: 330,
          child: Drawer(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                      )
                    ],
                  ),
                ),

                /* secound line */
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                if (scaffoldKey.currentState.isDrawerOpen ||
                                    scaffoldKey.currentState.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                              child: const FaIcon(
                                FontAwesomeIcons.angleDoubleLeft,
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  50, 10, 0, 6),
                              child: Image.network(
                                'https://i.ibb.co/3Fy7X82/logo.png',
                                width: 190,
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 8,
                  thickness: 1,
                  indent: 1,
                  endIndent: 1,
                  color: Color(0xFFFFFFFF),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15, 10, 5, 10),
                          child: Container(
                            width: 70,
                            height: 70,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://i.ibb.co/NW4nMPX/profile-pic-24.png',
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'SHEVON KRISHMAL',
                            style: (GoogleFonts.getFont('Quantico',
                                fontSize: 20, color: Colors.white)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Divider(
                  height: 8,
                  thickness: 1,
                  indent: 1,
                  endIndent: 1,
                  color: Color(0xFFFFFFFF),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: <Widget>[
                                  ExpansionTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.productHunt,
                                      color: Colors.white,
                                    ),
                                    collapsedIconColor: Color(0xFFFFFFFF),
                                    title: Text("Products",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                    children: <Widget>[
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Mobiles & Tablets, Computer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Home & Kitchen Appliances',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'TV, Home Audio Video & Int',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Furniture',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Sewing Macines',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Gift Vouchers',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Fitness Equipment',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                    ],
                                  ),

                                  //tab2

                                  ExpansionTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.tag,
                                      color: Colors.white,
                                    ),
                                    collapsedIconColor: Color(0xFFFFFFFF),
                                    title: Text("Brands",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                    children: <Widget>[
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Samsung',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Apple',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Yamaha',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                    ],
                                  ),
                                  //tab3

                                  ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.shoppingBag,
                                      color: Colors.white,
                                    ),
                                    //collapsedIconColor: Color(0xFFFFFFFF),
                                    title: Text("Duty Free",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),

                                  //tab4
                                  ExpansionTile(
                                    leading: Icon(
                                      Icons.miscellaneous_services_outlined,
                                      color: Colors.white,
                                    ),
                                    collapsedIconColor: Color(0xFFFFFFFF),
                                    title: Text("Added Services",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                    children: <Widget>[
                                      ListTile(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoyaltyProgram()));
                                        },
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Customer Loyalty Program',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Loyalty Card Point Balance',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Easy Payment Schema',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'HP Installment Payment',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Senasuma Extended',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                      ListTile(
                                        tileColor: Color(0x61000000),
                                        hoverColor: Color(0xFF6200EA),
                                        title: Text(
                                          'Express Pay',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'PT Sans Caption',
                                              fontSize: 15),
                                          textAlign: TextAlign.justify,
                                        ),
                                        dense: true,
                                      ),
                                    ],
                                  ),
                                  ListTile(
                                    //collapsedIconColor: Color(0xFFFFFFFF),
                                    leading: Icon(
                                      Icons.domain,
                                      color: Colors.white,
                                    ),
                                    title: Text("Omini Cart",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                  ListTile(
                                    //collapsedIconColor: Color(0xFFFFFFFF),
                                    leading: FaIcon(
                                      FontAwesomeIcons.balanceScale,
                                      color: Colors.white,
                                    ),
                                    title: Text("Mid Year Sale",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
