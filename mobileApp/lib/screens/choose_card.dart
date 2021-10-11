import 'package:flutter/material.dart';
import 'package:singer_sl/screens/card_details.dart';

class ChooseCard extends StatelessWidget {
  // const ChooseCard({ Key? key }) : super(key: key);

  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: Color(0xFFD61717),
    textStyle:
        TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 20),
    side: BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          title: Row(
            children: <Widget>[
              Image.network(
                'https://i.ibb.co/3Fy7X82/logo.png',
                height: 50,
              )
            ],
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            )
          ]),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-0.9, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Payment',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFD61717),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: Text(
                  'Choose Card Type ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: RadioButton(),
                  ),
                  // Padding(
                  //     padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  //     child: RadioButton()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                    child: Master(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                child: Text(
                  'Choose Plan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: PaymentPlan(),
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                  //   child: Radio(
                  //     value: '6 months',
                  //     onChanged: null,
                  //     groupValue: null,
                  //     // optionHeight: 25,
                  //     // textStyle: TextStyle(
                  //     //   fontFamily: 'Poppins',
                  //     //   color: Colors.black,
                  //     // ),
                  //     // buttonPosition: RadioButtonPosition.left,
                  //     // direction: Axis.vertical,
                  //     // radioButtonColor: Colors.blue,
                  //     // inactiveRadioButtonColor: Color(0x8A000000),
                  //     // toggleable: false,
                  //     // horizontalAlignment: WrapAlignment.start,
                  //     // verticalAlignment: WrapCrossAlignment.start,
                  //   ),
                  // )
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       // Padding(
            //       //   padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
            //       //   child: FlutterFlowRadioButton(
            //       //     options: ['12 months'],
            //       //     onChanged: (value) {
            //       //       setState(() => radioButtonValue6 = value);
            //       //     },
            //       //     optionHeight: 25,
            //       //     textStyle: FlutterFlowTheme.bodyText1.override(
            //       //       fontFamily: 'Poppins',
            //       //       color: Colors.black,
            //       //     ),
            //       //     buttonPosition: RadioButtonPosition.left,
            //       //     direction: Axis.vertical,
            //       //     radioButtonColor: Colors.blue,
            //       //     inactiveRadioButtonColor: Color(0x8A000000),
            //       //     toggleable: false,
            //       //     horizontalAlignment: WrapAlignment.start,
            //       //     verticalAlignment: WrapCrossAlignment.start,
            //       //   ),
            //       // ),
            //       // Padding(
            //       //   padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
            //       //   child: FlutterFlowRadioButton(
            //       //     options: ['18 months'],
            //       //     onChanged: (value) {
            //       //       setState(() => radioButtonValue7 = value);
            //       //     },
            //       //     optionHeight: 25,
            //       //     textStyle: FlutterFlowTheme.bodyText1.override(
            //       //       fontFamily: 'Poppins',
            //       //       color: Colors.black,
            //       //     ),
            //       //     buttonPosition: RadioButtonPosition.left,
            //       //     direction: Axis.vertical,
            //       //     radioButtonColor: Colors.blue,
            //       //     inactiveRadioButtonColor: Color(0x8A000000),
            //       //     toggleable: false,
            //       //     horizontalAlignment: WrapAlignment.start,
            //       //     verticalAlignment: WrapCrossAlignment.start,
            //       //   ),
            //       // )
            //     ],
            //   ),
            // ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardDetails()),
                  );
                },
                child: Text('Choose Plan'),
                style: style,
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum CardType { Visa, AmericanExpress, MasterCard }

class RadioButton extends StatefulWidget {
  // const RadioButton({ Key? key }) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  CardType _choose = CardType.Visa;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Radio<CardType>(
                activeColor: Colors.red,
                value: CardType.Visa,
                groupValue: _choose,
                onChanged: (CardType value) {
                  setState(() {
                    _choose = value;
                  });
                },
              ),
            ),
            Image.network(
              'https://logos-world.net/wp-content/uploads/2020/04/Visa-Logo-2006-2014-700x394.png',
              width: 140,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Radio<CardType>(
                activeColor: Colors.red,
                value: CardType.AmericanExpress,
                groupValue: _choose,
                onChanged: (CardType value) {
                  setState(() {
                    _choose = value;
                  });
                },
              ),
            ),
            Image.network(
              'https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto,fl_lossy/wp-cms/uploads/sites/4/2018/04/4-you-might-not-notice-amex-new-brand.jpg',
              width: 135,
              height: 50,
              fit: BoxFit.cover,
            ),
            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //         child: Radio<CardType>(
            //           activeColor: Colors.red,
            //           value: CardType.MasterCard,
            //           groupValue: _choose,
            //           onChanged: (CardType value) {
            //             setState(() {
            //               _choose = value;
            //             });
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Image.network(
            //   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png',
            //   height: 70,
            //   fit: BoxFit.cover,
            // )
          ],
        ),
      ],
    );
  }
}

enum Card { MasterCard, paypal }

class Master extends StatefulWidget {
  // const Master({ Key? key }) : super(key: key);

  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  Card _card = Card.paypal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Radio<Card>(
            activeColor: Colors.red,
            value: Card.MasterCard,
            groupValue: _card,
            onChanged: (Card value) {
              setState(() {
                _card = value;
              });
            },
          ),
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png',
          height: 70,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Radio<Card>(
            activeColor: Colors.white,
            value: Card.paypal,
            groupValue: _card,
            onChanged: (Card value) {
              setState(() {
                _card = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

enum ChoosePlan { ThreeMonths, SixMonths, TwelveMonths, EighteenMonths }

class PaymentPlan extends StatefulWidget {
  // const PaymentPlan({ Key? key }) : super(key: key);

  @override
  _PaymentPlanState createState() => _PaymentPlanState();
}

class _PaymentPlanState extends State<PaymentPlan> {
  ChoosePlan _plans = ChoosePlan.ThreeMonths;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32, 0, 0, 0),
            child: Radio(
              activeColor: Colors.red,
              value: ChoosePlan.ThreeMonths,
              groupValue: _plans,
              onChanged: (ChoosePlan value) {
                setState(() {
                  _plans = value;
                });
              },
            ),
          ),
          Text("3 Months", style: TextStyle(fontSize: 15)),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
            child: Radio<ChoosePlan>(
              activeColor: Colors.red,
              value: ChoosePlan.SixMonths,
              groupValue: _plans,
              onChanged: (ChoosePlan value) {
                setState(() {
                  _plans = value;
                });
              },
            ),
          ),
          Text(
            "6 Months",
            style: TextStyle(fontSize: 15),
          ),
        ]),
        Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
              child: Radio<ChoosePlan>(
                activeColor: Colors.red,
                value: ChoosePlan.TwelveMonths,
                groupValue: _plans,
                onChanged: (ChoosePlan value) {
                  setState(() {
                    _plans = value;
                  });
                },
              ),
            ),
            Text("12 Months", style: TextStyle(fontSize: 15)),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
              child: Radio<ChoosePlan>(
                activeColor: Colors.red,
                value: ChoosePlan.EighteenMonths,
                groupValue: _plans,
                onChanged: (ChoosePlan value) {
                  setState(() {
                    _plans = value;
                  });
                },
              ),
            ),
            Text("18 Months", style: TextStyle(fontSize: 15))
          ],
        )
      ],
    );
  }
}
