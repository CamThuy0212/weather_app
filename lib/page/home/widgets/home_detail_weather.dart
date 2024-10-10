import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather({super.key});

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
            const Text(
              "5km/h",
              style: TextStyle(
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
            const Text(
              "30%",
              style: TextStyle(
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
