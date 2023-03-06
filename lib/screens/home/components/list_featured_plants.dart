import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/data/data.dart';
import 'package:layout_practice_plant_app/screens/home/components/featured_plant_card.dart';

class ListFeaturedPlants extends StatelessWidget {
  const ListFeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          featuredPlant.length,
              (index) => FeaturedPlantCard(
            plantModel: featuredPlant[index],
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
