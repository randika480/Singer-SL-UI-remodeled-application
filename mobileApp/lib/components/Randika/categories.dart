import 'package:flutter/material.dart';
import 'package:singer_sl/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Apple",
    "Samsung",
    "Redmi",
    "Huawei",
    "Oneplus",
    "Oppo"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategories(index)),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
                height: 2,
                width: 40,
                color: selectedIndex == index ? Colors.red : Colors.transparent)
          ],
        ),
      ),
    );
  }
}
