// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  blurRadius: 8,
                  color: Colors.black38,
                )
              ],
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Image.network(
                            'https://i.ibb.co/3Fy7X82/logo.png',
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsetsDirectional.all(13),
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 2, 0, 2),
                            child: Material(
                              elevation: 8,
                              shadowColor: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                              child: TextField(
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFFFFFFF),
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFFFF0004),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 18,
                                  ),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
