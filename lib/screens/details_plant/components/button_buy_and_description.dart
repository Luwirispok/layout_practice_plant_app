import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class ButtonBuyAndDescription extends StatelessWidget {
  const ButtonBuyAndDescription({Key? key, this.onBuy, this.onDescription}) : super(key: key);

  final VoidCallback? onBuy;
  final VoidCallback? onDescription;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              log('Buy now', name: 'ButtonBuyAndDescription');
              onBuy?.call();
            },
            child: Container(
              width: size.width * 0.5,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              log('Description now', name: 'ButtonBuyAndDescription');
              onDescription?.call();
            },
            child: Container(
              width: size.width * 0.5,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              ),
              child: const Text(
                'Description',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
