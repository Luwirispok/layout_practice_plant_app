import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: kDefaultPadding / 2, left: kDefaultPadding),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      color: kPrimaryColor,
      child: GestureDetector(
        onTap: () {
          log('AppBar - Menu button', name: 'HomeScreen');
        },
        child: SvgPicture.asset(
          iconsMenu,
        ),
      ),
    );
  }
}
