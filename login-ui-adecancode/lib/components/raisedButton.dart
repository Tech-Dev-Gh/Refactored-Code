import 'package:flutter/material.dart';

import '../constant.dart';

class RaisedButtonComp extends StatelessWidget {
  const RaisedButtonComp({Key key, @required this.imgSrc, @required this.text})
      : super(key: key);

  final String imgSrc;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      padding: EdgeInsets.all(15),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Image.asset(imgSrc, height: 20),
          Container(
            height: 30,
            child: VerticalDivider(
              thickness: 1.0,
              color: Colors.blueGrey,
              width: 30,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: primaryColor,
              fontSize: 15,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
