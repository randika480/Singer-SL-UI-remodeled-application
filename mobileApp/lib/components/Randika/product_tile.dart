import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';
import 'package:singer_sl/screens/cart/Cart.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            product.modalNo,
            style: TextStyle(color: Colors.black),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.95),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                    child: IconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/add_to_cart.svg",
                          color: Colors.white,
                          height: 100,
                          width: 100,
                        ),
                      
                         onPressed: () {  
                           //call alert fubction
                            showAlertDialog(context, product);  
                        },  
                            ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


showAlertDialog(BuildContext context, product) {  

  // Create button  
  Widget okButton = FlatButton(  
    child: Text("OK",style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text(""),  
    content: Text("'${product.title}' Added to The Cart",  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize:20)),  
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