import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/screens/home/components/list_featured_plants.dart';
import 'package:layout_practice_plant_app/screens/home/components/list_recommended_plants.dart';
import 'package:layout_practice_plant_app/screens/home/widgets/title_with_more_button.dart';

import 'header_and_search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderAndSearch(),
            TitleWithMoreButton(
              title: 'Recommended',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const ListRecommendedPlants(),
            TitleWithMoreButton(
              title: 'Featured Plants',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const ListFeaturedPlants(),
          ],
        ),
      ),
    );
  }
}
