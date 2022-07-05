
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/detals_screen_body.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(),
    );
  }
}

