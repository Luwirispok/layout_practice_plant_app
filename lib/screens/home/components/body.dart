import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

import 'header_and_search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderAndSearch(),
          TitleWithMoreButton(
            title: 'Recommended',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadowColor: kPrimaryColor,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kBackgroundColor,
                fontSize: 15,
              ),
            ),
            onPressed: onTap,
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}
