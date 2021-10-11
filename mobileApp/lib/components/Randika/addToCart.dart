import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';
import 'package:singer_sl/screens/cart/Cart.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(
                  top: kDefaultPaddin / 2, left: kDefaultPaddin / 2),
      child: Padding(
       
        padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin * 0),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: kDefaultPaddin * 2,
              ),
              height: 50,
              width: 150,
              child: Container(
                margin: EdgeInsets.only(
                    top: kDefaultPaddin / 2, left: kDefaultPaddin / 2),
                child: Text(
                  "Rs.${product.price}/=",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
                width: 30,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.red,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartScreen(
                              product: product,
                            )),
                  ),
                  child: Text(
                    "BUY NOW",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: kDefaultPaddin,
            ),
          ],
        ),
      ),
    );
  }
}
