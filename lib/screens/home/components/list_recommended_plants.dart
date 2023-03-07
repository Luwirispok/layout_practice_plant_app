import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/data/data.dart';
import 'package:layout_practice_plant_app/screens/home/widgets/recommended_plant_card.dart';

class ListRecommendedPlants extends StatelessWidget {
  const ListRecommendedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listPlant.length,
          (index) => RecommendedPlantCart(
            plantModel: listPlant[index],
            onTap: () {
              log(listPlant[index].title, name: 'ListRecommendedPlants');
              Navigator.pushNamed(
                context,
                '/details_plant_screen',
                arguments: listPlant[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
