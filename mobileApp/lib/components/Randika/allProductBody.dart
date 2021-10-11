import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/categories.dart';
import 'package:singer_sl/components/Randika/itemCard.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';
import 'package:singer_sl/screens/singleProduct/singleProduct.dart';

class AllProductBody extends StatelessWidget {
  const AllProductBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Mobile Phones",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleProduct(
                                  product: products[index],
                                ))),
                  )),
        ))
      ],
    );
  }
}
