import 'package:flutter/material.dart';
import 'button_details_and_image.dart';
import 'plant_info.dart';
import 'button_buy_and_description.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ButtonDetailsAndImage(),
        PlantInfo(),
        ButtonBuyAndDescription(),
      ],
    );
  }
}
