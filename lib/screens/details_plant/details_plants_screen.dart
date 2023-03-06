import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';

class DetailsPlantScreen extends StatelessWidget {
  const DetailsPlantScreen({
    Key? key,
    required this.plantModel,
  }) : super(key: key);

  final PlantModel plantModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BackButton());
  }
}
