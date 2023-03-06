import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.plantModel,
    required this.onTap,
  }) : super(key: key);

  final PlantModel plantModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        height: 200,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(1, 3),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            fit: BoxFit.cover,
            plantModel.image,
          ),
        ),
      ),
    );
  }
}
