import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  HomeLocation({super.key, required this.location});

  final df = DateFormat("dd-MM-yyyy");
  final String location;

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
            Text(
              location,
              style: const TextStyle(
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
