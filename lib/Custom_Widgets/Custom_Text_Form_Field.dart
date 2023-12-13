import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
  });
  final String label, hintText;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(9),
                )),
          ),
        ),
      ),
    );
  }
}
