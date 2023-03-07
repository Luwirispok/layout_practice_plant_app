import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';

import 'components/app_bar_details_plant.dart';
import 'components/body.dart';

class DetailsPlantScreen extends StatelessWidget {
  const DetailsPlantScreen({
    Key? key,
    required this.plantModel,
  }) : super(key: key);

  final PlantModel plantModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PlantInfoInheritedWidget(
          plantModel: plantModel,
          child: const Stack(
            children: [
              Body(),
              AppBarDetailsPlant(),
            ],
          ),
        ),
      ),
    );
  }
}

class PlantInfoInheritedWidget extends InheritedWidget {
  const PlantInfoInheritedWidget({
    Key? key,
    required this.plantModel,
    required Widget child,
  }) : super(key: key, child: child);

  final PlantModel plantModel;

  static PlantInfoInheritedWidget of(BuildContext context) {
    final PlantInfoInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<PlantInfoInheritedWidget>();
    return result!;
  }

  @override
  bool updateShouldNotify(PlantInfoInheritedWidget oldWidget) {
    return oldWidget.plantModel != plantModel;
  }
}
