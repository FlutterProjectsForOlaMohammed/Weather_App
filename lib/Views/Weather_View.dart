import 'package:flutter/material.dart';
import 'package:update_version_weather_app/Widgets/Weather_Body.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeatherBody(),
    );
  }
}
