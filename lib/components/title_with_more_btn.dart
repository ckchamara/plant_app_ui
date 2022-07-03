import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final void Function() press;
  const TitleWithMoreBtn({
    Key? key, required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Row(
        children: [
          TileWithCustomUnderline(text: 'Reccomended'),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text("More", style: TextStyle(color: Colors.white),),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(kPrimaryColor)
            ),
          )
        ],
      ),
    );
  }
}


class TileWithCustomUnderline extends StatelessWidget {
  final String text;

  const TileWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(.2),
            ),
          )
        ],
      ),
    );
  }
}
