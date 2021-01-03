import 'package:flutter/material.dart';

Row buildDivider() {
  return Row(
    children: [
      Expanded(
        child: Divider(
          thickness: 1.0,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "or",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Expanded(
        child: Divider(
          thickness: 1.0,
          color: Colors.white,
        ),
      ),
    ],
  );
}
