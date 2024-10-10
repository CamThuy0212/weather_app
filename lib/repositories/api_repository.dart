import 'package:dio/dio.dart';
import 'package:weather_app/modules/weather.dart';

class ApiRepository {
  static Future<WeatherData> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10.8116904432228&lon=106.66554420416898&appid=75d5ff4c4a1568ae29b02d6dbf3b672b');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
