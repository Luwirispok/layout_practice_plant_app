import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

final List<PlantModel> listPlant = [
  PlantModel("Very long plant name #1 ", imagesRecommendedPlant1, "Very long country name #1",
      440, 1),
  PlantModel("Plant #2", imagesRecommendedPlant2, "Country #2", 350, 2),
  PlantModel("Plant #3", imagesRecommendedPlant3, "Country #3", 490, 3),
  PlantModel("Plant #4", imagesRecommendedPlant4, "Country #4", 510, 4),
];

final List<PlantModel> featuredPlant = [
  PlantModel("Plant #5", imagesFeaturedPlant1, "Country #5", 440, 5),
  PlantModel("Plant #6", imagesFeaturedPlant2, "Country #6", 350, 6),
  PlantModel("Plant #7", imagesFeaturedPlant3, "Country #7", 490, 7),
];

