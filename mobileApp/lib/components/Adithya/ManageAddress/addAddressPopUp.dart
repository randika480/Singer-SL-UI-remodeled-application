// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:singer_sl/common/roundedInputField.dart';
import 'package:singer_sl/components/Adithya/ManageAddress/custom_rect_tween.dart';
import 'package:singer_sl/constants.dart';

enum AddressType { work, home }
const String _heroAddTodo = 'Add new address hero';

class AddAddressPopUp extends StatefulWidget {
  const AddAddressPopUp({Key key}) : super(key: key);

  @override
  _AddAddressPopUpState createState() => _AddAddressPopUpState();
}

class _AddAddressPopUpState extends State<AddAddressPopUp> {
  @override
  Widget build(BuildContext context) {
    AddressType _character = AddressType.work;
    Size size = MediaQuery.of(context).size;
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(_heroAddTodo),
                    const SizedBox(
                      height: 10,
                    ),
                    RoundedInputField(
                      hintText: "Line 1",
                      onChnage: (value) {},
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    RoundedInputField(
                      hintText: "Line 2",
                      onChnage: (value) {},
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // RoundedInputField(
                    //   hintText: "Line 3",
                    //   onChnage: (value) {},
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    RoundedInputField(
                      hintText: "City / Town",
                      onChnage: (value) {},
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    ListTile(
                      title: const Text('Home (All day deliveries)'),
                      leading: Radio<AddressType>(
                        value: AddressType.home,
                        groupValue: _character,
                        onChanged: (value) {
                          _character = value;
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Work (Deliveries between 9AM-5PM)'),
                      leading: Radio<AddressType>(
                        value: AddressType.work,
                        groupValue: _character,
                        onChanged: (value) {
                          _character = value;
                        },
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          primary: Colors.white,
                          backgroundColor: appPrimaryColor,
                          textStyle: const TextStyle(fontSize: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text('SAVE'),
                    ),
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
