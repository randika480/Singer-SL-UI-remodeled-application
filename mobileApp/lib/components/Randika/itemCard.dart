import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefaultPaddin / 2),
        child: Container(
          padding: EdgeInsets.all(kDefaultPaddin / 2),
          decoration: BoxDecoration(
            // color: product.color,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.grey,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image,
                      width: 100,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
                  child: Text(
                    product.title,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Rs${product.price}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              alignment: AlignmentDirectional(0.95, 0),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/heart.svg",
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: kDefaultPaddin * 4,
                            ),
                            Container(
                              alignment: AlignmentDirectional(0.95, 0),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.red,
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/add_to_cart.svg",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ]),
                    ])
              ]),
        ),
      ),
    );
  }
}
