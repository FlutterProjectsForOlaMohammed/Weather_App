import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:update_version_weather_app/Models/Weather_model.dart';

class WeatherData {
  final String apiKey = "929dbcd01f834a9690015706232907";
  final String baseUrl = "http://api.weatherapi.com/v1";
  final dio = Dio();
  dynamic getWeatherData({required String cityName}) async {
    Response response =
        await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      log("status code is ${response.statusCode} and it is ${response.statusMessage} ");
    }
  }
}
