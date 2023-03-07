import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key, this.onSearch}) : super(key: key);

  final ValueChanged<String>? onSearch;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

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
                color: kPrimaryColor.withOpacity(0.3),
              )
            ]),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                style: const TextStyle(color: kTextColor),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: kPrimaryColor),
                ),
                onEditingComplete: () {
                  log(_textEditingController.text, name: 'SearchTextField');
                  widget.onSearch?.call(_textEditingController.text);
                },
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                log(_textEditingController.text, name: 'SearchTextField');
                widget.onSearch?.call(_textEditingController.text);
              },
              child: SvgPicture.asset(
                iconsSearch,
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
