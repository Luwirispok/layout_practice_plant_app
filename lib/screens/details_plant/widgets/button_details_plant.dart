import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class ButtonDetailsPlant extends StatelessWidget {
  const ButtonDetailsPlant({
    Key? key,
    required this.onTap,
    required this.iconAsset,
  }) : super(key: key);

  final VoidCallback onTap;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
            ),
            const BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 10,
              color: Colors.white,
            ),
          ],
        ),
        child: SvgPicture.asset(iconAsset),
      ),
    );
  }
}
