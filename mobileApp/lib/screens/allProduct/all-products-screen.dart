import 'package:flutter/material.dart';
import 'package:singer_sl/components/Randika/allProductBody.dart';
import 'package:singer_sl/constants.dart';
import 'package:flutter_svg/svg.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: AllProductBody(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        // IconButton(
        //   icon: SvgPicture.asset(
        //     "assets/icons/search.svg",
        //     color: kTextColor,
        //   ),
        //   onPressed: () {},
        // ),
        // IconButton(
        //   icon: SvgPicture.asset(
        //     "assets/icons/cart.svg",
        //     color: kTextColor,
        //   ),
        //   onPressed: () {},
        // ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
