import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class AppBarDetailsPlant extends StatelessWidget {
  const AppBarDetailsPlant({Key? key, this.onMore}) : super(key: key);

  final VoidCallback? onMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: kTextColor,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              log('Button more', name: 'DetailsPlantScreen');
              onMore?.call();
            },
            child: const Icon(
              Icons.more_horiz,
              color: kBackgroundColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
