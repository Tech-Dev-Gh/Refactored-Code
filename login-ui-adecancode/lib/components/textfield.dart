import 'package:flutter/material.dart';
import '../constant.dart';

class TextFieldComp extends StatelessWidget {
  const TextFieldComp(
      {Key key,
      @required this.text,
      @required this.icon,
      @required this.obscureText})
      : super(key: key);

  final String text;
  final Icon icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: textFieldColor,
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.white54,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
        ),
        prefixIcon: icon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none),
      ),
    );
  }
}
