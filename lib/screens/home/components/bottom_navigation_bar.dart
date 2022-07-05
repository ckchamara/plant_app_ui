import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: size.height / 11,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(.38)),
      ], color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
