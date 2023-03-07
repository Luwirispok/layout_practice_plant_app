import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/screens/home/widgets/search_text_field.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class HeaderAndSearch extends StatelessWidget {
  const HeaderAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.3,
        child: const Stack(
          children: [
            Header(),
            SearchTextField(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2,
        horizontal: kDefaultPadding,
      ),
      height: size.height * 0.3 - 27,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(kDefaultPadding * 1.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hi Uishopy!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.height * 0.05,
              color: kBackgroundColor,
            ),
          ),
          Image.asset(imagesLogo),
        ],
      ),
    );
  }
}
