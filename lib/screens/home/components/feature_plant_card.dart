import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

class FeaturePlantCard extends StatelessWidget {
  final String image;
  final void Function() onpress;

  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
