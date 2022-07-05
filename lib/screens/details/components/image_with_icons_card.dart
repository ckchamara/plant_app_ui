import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageWithIconsCard extends StatelessWidget {
  const ImageWithIconsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .8,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                padding:
                                EdgeInsets.symmetric(horizontal: kDefaultPadding),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon:
                                SvgPicture.asset('assets/icons/back_arrow.svg')),
                          ),
                          Spacer(),
                          IconCard(image: 'assets/icons/sun.svg',),
                          IconCard(image: 'assets/icons/icon_2.svg',),
                          IconCard(image: 'assets/icons/icon_3.svg',),
                          IconCard(image: 'assets/icons/icon_4.svg',),

                        ],
                      ),
                    )),
                Container(
                  height: size.height * .8,
                  width: size.width * .75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(63),
                          bottomLeft: Radius.circular(63)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 60,
                            color: kPrimaryColor.withOpacity(.29))
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/images/img.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}