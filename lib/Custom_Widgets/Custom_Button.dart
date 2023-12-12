import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.09),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      onPressed: onPressed,
      icon: Icon(
        Icons.search,
        color: Colors.blue[900],
      ),
    );
  }
}
