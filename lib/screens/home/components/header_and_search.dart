import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Image.asset(logo),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(kDefaultPadding * 2),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              )
            ]),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                style: TextStyle(color: kTextColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: kPrimaryColor),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                log('HeaderAndSearch - Search button', name: 'HomeScreen');
              },
              child: SvgPicture.asset(
                search,
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
