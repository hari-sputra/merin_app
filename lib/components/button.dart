import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, textColor;
  final Function onPressed;

  const MyButton(
      {Key? key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(349, 52),
        primary: buttonColor,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
