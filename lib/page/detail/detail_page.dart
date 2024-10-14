import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/page/detail/widgets/detail_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff1d6cf3), Color(0xff19d2fe)],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: Row(
            children: [
              const Icon(CupertinoIcons.location),
              const SizedBox(
                width: 15,
              ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText("Ho Chi Minh",
                      speed: const Duration(milliseconds: 100))
                ],
              ),
            ],
          ),
          actions: const [
            Icon(CupertinoIcons.search),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: const DetailBody(),
      ),
    );
  }
}
