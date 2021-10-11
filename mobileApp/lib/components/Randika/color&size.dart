import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:singer_sl/constants.dart';
import 'package:singer_sl/models/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(
                  top: kDefaultPaddin / 2, left: kDefaultPaddin ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFECEFF1),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFECEFF1),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFECEFF1),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFECEFF1),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFECEFF1),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                Text("Color"),
                Row(
                  children: <Widget>[
                    ColorDots(
                      color: Colors.blue,
                      isSelected: true,
                    ),
                    ColorDots(
                      color: Colors.black,
                    ),
                    ColorDots(
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: RichText(
                text: TextSpan(style: TextStyle(color: kTextColor), children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold))
            ])),
          )
        ],
      ),
    );
  }
}

class ColorDots extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDots({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
