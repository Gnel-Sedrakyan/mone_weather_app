import 'package:flutter/material.dart';
import 'package:mone_weather_app/presentation/core/constants/colors.dart';
import 'package:mone_weather_app/presentation/core/constants/defalut_values.dart';

class MainScreen extends StatefulWidget {
  static const location = "/weather/";

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Works");
  }
}
