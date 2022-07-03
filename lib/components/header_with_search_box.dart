import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

Container HeaderWithSearchBox(Size size, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 2),
    height: size.height * .2,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * .2 - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
          // bor
          child: Row(
            children: [
              Text(
                "Hi Malcolm",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset('assets/images/logo.png')
            ],
          ),
        ),
        //Textbox
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: size.width / 20),
                        hintText: "Search..",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        //suffix isn't working properly that's why we use Row Widget wrap
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: size.width / 20),
                      child: SvgPicture.asset("assets/icons/search.svg")),
                ],
              ),
            ))
      ],
    ),
  );
}
