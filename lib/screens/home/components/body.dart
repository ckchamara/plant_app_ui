import 'package:flutter/material.dart';

import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/recomend_plant_card.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_btn.dart';

import '../../details/details_screen.dart';
import 'feature_plant_card.dart';
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
          TitleWithMoreBtn(press: () {}, title: 'Featured Plants'),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(onpress: () {},image: 'assets/images/bottom_img_1.png'),
          FeaturePlantCard(onpress: () {},image: 'assets/images/bottom_img_2.png'),
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
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            price: 400,
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
          ),
          RecommendPlantCard(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            price: 400,
            image: 'assets/images/image_2.png',
            title: 'Samantha',
            country: 'Russia',
          ),
          RecommendPlantCard(
            onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
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
