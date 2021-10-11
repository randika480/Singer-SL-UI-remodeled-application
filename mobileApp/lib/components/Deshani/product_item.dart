import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/Cart.dart';
// // import 'package:singer_app/screens/order_data.dart';
// import 'package:singer_app/screens/order_success.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  ProductItem({this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
            ),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
