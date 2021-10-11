import 'package:flutter/material.dart';
import 'package:singer_sl/components/Deshani/category.dart';
import 'package:singer_sl/components/Deshani/new_arrivals.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       
        Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Category(),
        SizedBox(
          height: 10,
        ),
        Text('New Arrivals',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        // Container(height: 400, child: NewArrivals())
        NewArrivals()
      ],
    );
  }
}
