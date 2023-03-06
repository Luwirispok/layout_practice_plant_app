import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadowColor: kPrimaryColor,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kBackgroundColor,
                fontSize: 15,
              ),
            ),
            onPressed: onPressed,
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}