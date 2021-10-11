import 'package:flutter/material.dart';
import 'package:singer_sl/screens/allProduct/all-products-screen.dart';

class CategoryCard extends StatelessWidget {
  // const CategoryCard({Key? key}) : super(key: key);

  final Icon icon;
  final String name;

  CategoryCard(this.icon, this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AllProducts()),
          ),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
              ),
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    icon,
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              )),
        ));
  }
}
