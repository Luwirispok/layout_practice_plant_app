import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/screens/details_plant/details_plant_screen.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class ImagePlant extends StatelessWidget {
  const ImagePlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlantModel plantModel = PlantInfoInheritedWidget.of(context).plantModel;
    final Size size = MediaQuery.of(context).size;
    return Hero(
      tag: plantModel.id,
      child: Container(
        height: size.height * 0.7,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(63),
            bottomLeft: Radius.circular(63),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 60,
              color: kPrimaryColor.withOpacity(0.29),
            ),
          ],
          image: DecorationImage(
            alignment: Alignment.center,
            fit: BoxFit.fitHeight,
            image: AssetImage(plantModel.image),
          ),
        ),
      ),
    );
  }
}
