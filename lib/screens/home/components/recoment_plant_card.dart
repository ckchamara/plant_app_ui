import 'package:flutter/material.dart';
import '../../../constants.dart';

class RecommendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final VoidCallback onpress;

  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding*1.1),
      width: size.width * .4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onpress,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 15,
                      color: kPrimaryColor.withOpacity(.20))
                ],
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
