import 'package:flutter/material.dart';
import 'package:update_version_weather_app/Custom_Widgets/Custom_Text_Form_Field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: const Text(
          "Search For City Weather ",
          style: TextStyle(
              color: Color.fromARGB(255, 120, 117, 117),
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: const Column(children: [
        SizedBox(
          height: 200,
        ),
        CustomTextFormField(hintText: "Enter City Name ", label: "Search"),
        SizedBox(
          height: 150,
          child: Center(
            child: Text(
              "I Hope You Have a Nice Day .",
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 120, 117, 117),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico"),
            ),
          ),
        ),
      ]),
    );
  }
}
