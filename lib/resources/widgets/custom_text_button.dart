import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final double textSize;
  final onPressed;
  const CustomTextButton({Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.textSize,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonColor,
            //fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
