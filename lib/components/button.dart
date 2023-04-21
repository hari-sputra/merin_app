import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, textColor;
  final Function onPressed;
  final double paddingHorizontal;

  const MyButton(
      {Key? key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.paddingHorizontal,
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
        primary: buttonColor,
        padding:
            EdgeInsets.symmetric(vertical: 12.0, horizontal: paddingHorizontal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
