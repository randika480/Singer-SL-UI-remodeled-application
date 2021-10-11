import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/cartCounter.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CartCounter(),
        ]);
  }
}
