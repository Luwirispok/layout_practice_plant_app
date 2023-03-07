import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/screens/details_plant/details_plant_screen.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class PlantInfo extends StatelessWidget {
  const PlantInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlantModel plantModel = PlantInfoInheritedWidget.of(context).plantModel;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plantModel.title,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  plantModel.country,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 25,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '\$${plantModel.price}',
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
