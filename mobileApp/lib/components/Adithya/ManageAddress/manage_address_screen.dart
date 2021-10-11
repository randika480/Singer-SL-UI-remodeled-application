import 'package:flutter/material.dart';
import 'package:singer_sl/common/roundedInputField.dart';
import 'package:singer_sl/components/Adithya/ManageAddress/addAddressPopUp.dart';
import 'package:singer_sl/components/Adithya/ManageAddress/heroDialogRoute.dart';
import 'package:singer_sl/constants.dart';

enum AddressType { work, home }

class ManageAddress extends StatelessWidget {
  const ManageAddress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddressType _character = AddressType.work;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.1,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Manage Address',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(HeroDialogRoute(builder: (context) {
                    return AddAddressPopUp();
                  }));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    const Text(
                      'Add New',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(15),
                  primary: appPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.black87,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFFF5F5F5),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    'JourneyID: #001',
                                    style: TextStyle(),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    'Start Location: Panadura',
                                    style: TextStyle(),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    'EndLocation: Kandy',
                                    style: TextStyle(),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 2),
                                  child: Text(
                                    'StartTime: 6.00am    EndTime: 10.00am',
                                    style: TextStyle(),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
