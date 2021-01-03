import 'package:flutter/material.dart';

import 'textField.dart';
import 'flatButton.dart';
import 'footerText.dart';

class MainLoginFormComp extends StatelessWidget {
  const MainLoginFormComp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding:
            EdgeInsets.only(bottom: media.height * 0.1, left: 30, right: 30),
        children: [
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 40),
          TextFieldComp(
            text: "Email",
            hintText: "vijaybhuva@gmail.com",
            obscureText: false,
          ),
          SizedBox(height: 25),
          TextFieldComp(
            text: "Password",
            hintText: "⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫",
            obscureText: true,
          ),
          SizedBox(height: 30),
          FlatButtonComp(
            text: "Login",
          ),
          buildFooterText(
            context,
            "Don't have any account? Sign up",
            "push",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
