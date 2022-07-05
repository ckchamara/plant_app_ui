import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/components/product_detals_bottom-part.dart';
import 'package:plant_app_ui/screens/details/components/tile_and_price.dart';

import 'icon_card.dart';
import 'image_with_icons_card.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithIconsCard(size: size),
          TitleAndPrice(
            price: 440,
            title: 'Angelica',
            country: 'Russia',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ProductDetailsAndBuynow(size: size)
        ],
      ),
    );
  }
}

