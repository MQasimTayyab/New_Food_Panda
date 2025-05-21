import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/image_path.dart';
import 'package:food_panda/Presentation/Widgets/home_page.dart';

import 'Presentation/Common/common_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigate.toReplace(context, HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: double.infinity,
            child: AssetImages(
              issvg: false,
              imagepath: ImagePath.startpage,
            )),
      ),
    );
  }
}
