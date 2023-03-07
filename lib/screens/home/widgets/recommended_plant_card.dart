import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class RecommendedPlantCart extends StatelessWidget {
  const RecommendedPlantCart({
    Key? key,
    required this.plantModel,
    required this.onTap,
  }) : super(key: key);

  final PlantModel plantModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(3, 5),
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(kDefaultPadding)),
              child: Hero(
                tag: plantModel.id,
                child: Image.asset(
                  width: 170,
                  height: 200,
                  fit: BoxFit.cover,
                  plantModel.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plantModel.title.toUpperCase(),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          plantModel.country,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text(
                    '\$${plantModel.price}',
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
