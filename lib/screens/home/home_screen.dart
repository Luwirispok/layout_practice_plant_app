import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

import 'components/app_bar_home.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarHome(),
            Expanded(child: Body()),
          ],
        ),
      ),
    );
  }
}
