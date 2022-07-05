import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductDetailsAndBuynow extends StatelessWidget {
  const ProductDetailsAndBuynow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: size.width / 2,
            height: 84,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Buy Now',
              ),
              style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 16),
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20)))),
            )),
        Expanded(
            child: SizedBox(
              height: 84,
              child: TextButton(
                onPressed: () {},
                child: Text('Description'),
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20)))),
              ),
            ))
      ],
    );
  }
}
