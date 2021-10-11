import 'package:flutter/material.dart';
import './category_card.dart';

class Category extends StatelessWidget {
  // const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            
              Icon(
                Icons.smartphone,
                size: 40,
                color: Colors.white,
              ),
              "Phone"),
          CategoryCard(
              Icon(
                Icons.laptop,
                size: 40,
                color: Colors.white,
              ),
              "Laptop"),
          CategoryCard(
              Icon(
                Icons.chair,
                size: 40,
                color: Colors.white,
              ),
              "Furniture"),
          CategoryCard(
              Icon(
                Icons.tv,
                size: 40,
                color: Colors.white,
              ),
              "TV"),
          CategoryCard(
              Icon(
                Icons.kitchen,
                size: 40,
                color: Colors.white,
              ),
              "Kitchen"),
          CategoryCard(
              Icon(
                Icons.fitness_center,
                size: 40,
                color: Colors.white,
              ),
              "Fitness"),
          CategoryCard(
              Icon(
                Icons.card_giftcard,
                size: 40,
                color: Colors.white,
              ),
              "Gift"),
        ],
      ),
    );
  }
}
