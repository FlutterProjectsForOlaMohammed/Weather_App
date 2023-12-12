import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "There is No Weather 😔 Start",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text("Searching Now 🔍",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
