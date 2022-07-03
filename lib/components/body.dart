import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/components/title_with_more_btn.dart';
import 'package:plant_app_ui/constants.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size, context),
          TitleWithMoreBtn(press: () {}, title: 'Recommended'),
          Container(
            child: Column(
              children: [
                Image.asset('assets/images/image_1.png'),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(.23))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
