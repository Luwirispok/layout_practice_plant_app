import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layout_practice_plant_app/models/plant_model.dart';
import 'package:layout_practice_plant_app/screens/details_plant/details_plant_screen.dart';
import 'package:layout_practice_plant_app/screens/home/home_screen.dart';
import 'package:layout_practice_plant_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App - layout practice',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (RouteSettings settings) {
        log('${settings.name} - ${settings.arguments}', name: "Navigator");
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (BuildContext context) => const HomeScreen(),
            );
          case '/details_plant_screen':
            return MaterialPageRoute(
              builder: (BuildContext context) => DetailsPlantScreen(
                plantModel: settings.arguments as PlantModel,
              ),
            );
          default:
            return MaterialPageRoute(
                builder: (BuildContext context) => const ErrorScreen());
        }
      },
      initialRoute: '/',
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Error Navigator'),
          SizedBox(height: 15),
          BackButton(),
        ],
      ),
    );
  }
}
