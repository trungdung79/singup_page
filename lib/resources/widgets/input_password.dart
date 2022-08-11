import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final String hintText;
  final icon;
  const InputPassword({Key? key,
    required this.hintText,
    required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 60,
      child: TextField(
        //textAlignVertical: TextAlignVertical(y: -1.0),

        obscureText: true,

        style: const TextStyle(
            color: Colors.white,
            //fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 18),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(top: 14.0,),
            prefixIcon: Icon(icon, size: 26, color: Colors.brown[600],),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
