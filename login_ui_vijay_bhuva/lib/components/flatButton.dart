import 'package:flutter/material.dart';

class FlatButtonComp extends StatelessWidget {
  const FlatButtonComp({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: Colors.black,
      padding: EdgeInsets.all(18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
