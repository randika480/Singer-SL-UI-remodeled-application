import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        (" Brand : Samsung \n Specs : 64 GB, 4 GB RAM \n              2560 x 1600 pixels, 12.4 inches \n              Android 11 \n              8MP + 5MP Selfie"),
        style: TextStyle(height: 1.5, fontSize: 20, color: Colors.red),
      ),
    );
  }
}
