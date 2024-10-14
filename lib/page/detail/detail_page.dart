import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/modules/weather.dart';
import 'package:weather_app/page/detail/widgets/detail_body.dart';
import 'package:weather_app/providers/weather_provider.dart';

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
      child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherDetail(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return const Center(
                child: Text("No data"),
              );
            }
            List<WeatherDetail> listData = snapshot.data as List<WeatherDetail>;
            return Scaffold(
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
                        TypewriterAnimatedText(
                            context.read<WeatherProvider>().nameCity,
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
              body: DetailBody(
                listData: listData,
              ),
            );
          }),
    );
  }
}
