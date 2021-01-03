import 'package:flutter/material.dart';

import '../signup.dart';

Container buildFooterText(BuildContext context, String text, String action) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: () {
        if (action == "push") {
          return Navigator.push(
              context, MaterialPageRoute(builder: (_) => SignUp()));
        }
        Navigator.pop(context);
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.bold),
      ),
    ),
  );
}
