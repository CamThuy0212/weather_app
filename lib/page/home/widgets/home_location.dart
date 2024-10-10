import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  HomeLocation({super.key});

  final df = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icons/location.png",
              height: 28,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Ho Chi Minh City",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
