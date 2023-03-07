
import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

class BottomNavigationBarPlant extends StatefulWidget {
  const BottomNavigationBarPlant({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPlant> createState() => _BottomNavigationBarPlantState();
}

class _BottomNavigationBarPlantState extends State<BottomNavigationBarPlant> {
  List<bool> selectedIcon = [true, false, false];

  void _chooseAnIcon(int indexIcon) {
    setState(() {
      selectedIcon = [false, false, false];
      selectedIcon[indexIcon] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              selectedIcon[0] ? Icons.filter_vintage_outlined : Icons.filter_vintage,
              color: selectedIcon[0] ? kPrimaryColor : kTextColor.withOpacity(0.3),
            ),
            onPressed: () {
              _chooseAnIcon(0);
            },
          ),
          IconButton(
            icon: Icon(
              selectedIcon[1] ? Icons.favorite : Icons.favorite_border,
              color: selectedIcon[1] ? kPrimaryColor : kTextColor.withOpacity(0.3),
            ),
            onPressed: () {
              _chooseAnIcon(1);
            },
          ),
          IconButton(
            icon: Icon(
              selectedIcon[2] ? Icons.person_2 : Icons.person_2_outlined,
              color: selectedIcon[2] ? kPrimaryColor : kTextColor.withOpacity(0.3),
            ),
            onPressed: () {
              _chooseAnIcon(2);
            },
          ),
        ],
      ),
    );
  }
}