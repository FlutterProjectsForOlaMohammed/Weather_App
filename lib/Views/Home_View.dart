import 'package:flutter/material.dart';
import 'package:update_version_weather_app/Custom_Widgets/Custom_Button.dart';
import 'package:update_version_weather_app/Widgets/Weather_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Text(
          "Weather App",
          style:
              TextStyle(color: Colors.blue[900], fontWeight: FontWeight.w500),
        ),
        actions: const [
          Custom_Button(),
        ],
      ),
      body: const WeatherBody(),
    );
  }
}
