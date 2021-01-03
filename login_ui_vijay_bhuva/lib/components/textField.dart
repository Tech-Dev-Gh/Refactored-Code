import 'package:flutter/material.dart';

class TextFieldComp extends StatelessWidget {
  const TextFieldComp({
    Key key,
    @required this.text,
    @required this.hintText,
    @required this.obscureText,
  }) : super(key: key);

  final String text;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(1.0, 5.0),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 10, 15, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 1.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontFamily: "Poppins",
                ),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
