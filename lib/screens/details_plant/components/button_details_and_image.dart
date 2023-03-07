import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/screens/details_plant/widgets/button_details_plant.dart';
import 'package:layout_practice_plant_app/screens/details_plant/widgets/image_plant.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class ButtonDetailsAndImage extends StatelessWidget {
  const ButtonDetailsAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        children: [
          SizedBox(
            height: size.height * 0.7,
            width: size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonDetailsPlant(onTap: () {}, iconAsset: iconsIconButton1),
                ButtonDetailsPlant(onTap: () {}, iconAsset: iconsIconButton2),
                ButtonDetailsPlant(onTap: () {}, iconAsset: iconsIconButton3),
                ButtonDetailsPlant(onTap: () {}, iconAsset: iconsIconButton4),
              ],
            ),
          ),
          const ImagePlant(),
        ],
      ),
    );
  }
}
