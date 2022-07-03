import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        primarySwatch: Colors.teal,
        primaryColor: kPrimaryColor,
        textTheme: Theme
            .of(context)
            .textTheme
            .apply(bodyColor: kTextColor),
        scaffoldBackgroundColor: kBackgroundColor
      ),

      home: const HomeScreen(),
    );
  }
}



