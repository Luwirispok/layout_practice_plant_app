import 'package:flutter/material.dart';

import 'components/app_bar_home.dart';
import 'components/body.dart';
import 'components/bottom_navigator_bar_plant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationBarPlant(),
      body: Column(
        children: [
          AppBarHome(),
          Expanded(child: Body()),
        ],
      ),
    );
  }
}
