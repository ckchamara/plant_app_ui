import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/screens/home/components/body.dart';
import 'package:plant_app_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2,
      bottom: kDefaultPadding),
      height: size.height / 11,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(.38)),
      ], color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
