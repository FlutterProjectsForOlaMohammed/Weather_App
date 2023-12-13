import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:update_version_weather_app/Custom_Widgets/Custom_Button.dart';
import 'package:update_version_weather_app/Custom_Widgets/Text_Form_Field_Border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
  });
  final String label, hintText;

  @override
  Widget build(BuildContext context) {
    String cityName;
    final GlobalKey<FormState> formKey = GlobalKey();
    return Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Field is Required";
                }
              },
              onSaved: (value) {
                cityName = value!;
                log(cityName);
              },
              decoration: InputDecoration(
                suffixIcon: Custom_Button(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                ),
                suffixIconColor: const Color.fromRGBO(100, 181, 246, 1),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                hintText: hintText,
                labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(100, 181, 246, 1),
                    fontStyle: FontStyle.italic),
                label: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(label),
                ),
                border: TextFormFieldBorder(),
                enabledBorder: TextFormFieldBorder(),
                focusedBorder: TextFormFieldBorder(),
              ),
            ),
          ),
        ));
  }
}
