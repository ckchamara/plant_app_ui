import 'package:flutter/material.dart';
import 'package:plant_app_ui/components/recoment_plant_card.dart';
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
          RecomendPlants(),
          TitleWithMoreBtn(press: () {}, title: 'Recommended'),
        ],
      ),
    );
  }
}

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            onpress: () {},
            price: 400,
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
          ),
          RecommendPlantCard(
            onpress: () {},
            price: 400,
            image: 'assets/images/image_2.png',
            title: 'Samantha',
            country: 'Russia',
          ),
          RecommendPlantCard(
            onpress: () {},
            price: 400,
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Sri Lanka',
          ),
        ],
      ),
    );
  }
}

