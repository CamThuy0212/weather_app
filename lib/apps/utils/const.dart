import 'package:flutter/material.dart';

const linkAsset = "assets/images/weathers/";

class AssetCustom {
  static String getLinkImg(String name) =>
      "$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png";
}

class MyKey {
  static const String api_token = "75d5ff4c4a1568ae29b02d6dbf3b672b";
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Text(
        "0",
        style: TextStyle(
          fontSize: size / 3,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  );
}
