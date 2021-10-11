import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:singer_sl/components/Shevon/custom_rect_tween.dart';

const String _heroAddTodo = 'add-todo-hero';

class AddTodoPopupCard extends StatefulWidget {
  const AddTodoPopupCard({Key key}) : super(key: key);

  @override
  _AddTodoPopupCardState createState() => _AddTodoPopupCardState();
}

class _AddTodoPopupCardState extends State<AddTodoPopupCard> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  String _dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        elevation: 8,
        primary: Colors.red.shade600,
        shadowColor: Colors.black87,
        textStyle: const TextStyle(fontSize: 18),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)));
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin, end: end);
          },
          child: Material(
            color: Colors.white,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'SINGER Customer Loyalty Program',
                            textAlign: TextAlign.center,
                            style: (GoogleFonts.getFont('Quantico',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Expanded(
                          child: Text(
                            'Join Today! For Singer Loyalty Card To Get Fabulous Benefits.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Name',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFF0D47A1)),
                                                      /* 0xFF0D47A1 */
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: Material(
                                                  elevation: 8,
                                                  shadowColor: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: TextFormField(
                                                    controller: textController1,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      hintText: 'Enter Name',
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFFCFCFC),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 14,
                                                                  0, 14),
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Telephone',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFF0D47A1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: Material(
                                                  elevation: 8,
                                                  shadowColor: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: TextFormField(
                                                    controller: textController2,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      hintText:
                                                          'Enter Telephone',
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFFCFCFC),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 14,
                                                                  0, 14),
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Email',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFF0D47A1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: Material(
                                                  elevation: 8,
                                                  shadowColor: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: TextFormField(
                                                    controller: textController3,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      hintText: 'Enter Email',
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFFCFCFC),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 14,
                                                                  0, 14),
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'NIC',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFF0D47A1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: Material(
                                                  elevation: 8,
                                                  shadowColor: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  child: TextFormField(
                                                    controller: textController4,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      hintText: 'Enter NIC',
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0xFFFCFCFC),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 14,
                                                                  0, 14),
                                                    ),
                                                  ),
                                                ))
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Medium',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xFF0D47A1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                    child: Material(
                                                        elevation: 8,
                                                        shadowColor:
                                                            Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        child: DropdownButton(
                                                          hint: _dropDownValue ==
                                                                  null
                                                              ? const Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'Select',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            17),
                                                                  ),
                                                                )
                                                              : Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    _dropDownValue,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            17),
                                                                  ),
                                                                ),
                                                          isExpanded: true,
                                                          iconSize: 30.0,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.blue),
                                                          items: [
                                                            'English',
                                                            'Sinhala',
                                                            'Tamil'
                                                          ].map(
                                                            (val) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: val,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Text(val),
                                                                ),
                                                              );
                                                            },
                                                          ).toList(),
                                                          onChanged: (val) {
                                                            setState(
                                                              () {
                                                                _dropDownValue =
                                                                    val;
                                                              },
                                                            );
                                                          },
                                                        )))
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 35, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Center(
                                              child: ElevatedButton(
                                                style: style,
                                                onPressed: () {},
                                                child: const Text('Register',
                                                    style: (TextStyle(
                                                        color: Colors.white))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
