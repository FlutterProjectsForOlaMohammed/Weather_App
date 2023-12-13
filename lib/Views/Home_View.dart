import 'package:flutter/material.dart';
import 'package:update_version_weather_app/Custom_Widgets/Custom_Button.dart';
import 'package:update_version_weather_app/Views/Search_View.dart';
import 'package:update_version_weather_app/Widgets/No_Weather_body.dart';
//import 'package:update_version_weather_app/Widgets/Weather_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Text(
          "Weather App",
          style: TextStyle(
              color: Color.fromARGB(255, 120, 117, 117),
              fontWeight: FontWeight.w900),
        ),
        actions: [
          Custom_Button(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: const NoWeatherBody(),
    );
  }
}
