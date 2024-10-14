import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather(
      {super.key, required this.speedWind, required this.humidity});

  final num speedWind;
  final num humidity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/icons/wind.png",
              height: 35,
            ),
            Text(
              "${speedWind}km/h",
              style: const TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              "assets/images/icons/humidity.png",
              height: 35,
            ),
            Text(
              "$humidity%",
              style: const TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
