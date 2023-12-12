import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Alexandria",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        const Text(
          "updated at 12:00",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/clear.png'),
            const Text(
              "17",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Column(
              children: [
                Text(
                  "Max Temp : 24",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Text(
                  "Min Temp :16",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Clear",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        )
      ],
    );
  }
}
