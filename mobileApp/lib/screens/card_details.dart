import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:singer_sl/screens/order_success.dart';

class CardDetails extends StatelessWidget {
  // const Card({ Key? key }) : super(key: key);

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
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatefulWidget {
  // const CardDemo({ Key? key }) : super(key: key);

  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  String cardNumber = '';
  String cardHolderName = '';
  String cvvNumber = '';
  String expiryDate = '';
  bool showBackView = false;

  void onCreditCardModel(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      cardHolderName = creditCardModel.cardHolderName;
      expiryDate = creditCardModel.expiryDate;
      cvvNumber = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }

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
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            height: 210,
            cardHolderName: cardHolderName,
            cvvCode: cvvNumber,
            showBackView: showBackView,
            cardBgColor: Colors.red,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            animationDuration: Duration(milliseconds: 1200),
            // onCreditCardWidgetChange: (CreditCardBrand) {},
            // onCreditCardWidgetChange: (CreditCardBrand) {},
          ),
          Expanded(
            child: SingleChildScrollView(
              child: CreditCardForm(
                onCreditCardModelChange: onCreditCardModel,
                cursorColor: Colors.red,
                themeColor: Colors.black,
                formKey: null,
                cardHolderName: '',
                cardNumber: '',
                cvvCode: '',
                expiryDate: '',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => OrderSuccess()),
              // );
              showAlertDialog(context);
            },
            child: Text('Submit'),
            style: style,
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: Color(0xFFD61717),
    textStyle:
        TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 20),
    side: BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  );
  // Create button
  Widget okButton = ElevatedButton(
    child:
        Text("OK", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderSuccess()),
      );
    },
    style: style,
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(""),
    content: SingleChildScrollView(
      child: ListBody(children: const <Widget>[
        Icon(Icons.task_alt, color: Colors.green),
        Text("Your order is successfully placed",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)),
      ]),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
