import 'package:flutter/material.dart';
import 'package:weather_app/page/home/widgets/home_temperature.dart';
import 'package:weather_app/page/home/widgets/home_weather_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1d6cf3), Color(0xff19d2fe)],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeWeatherIcon(),
            HomeTemperature(),
          ],
        ),
      ),
    );
  }
}
