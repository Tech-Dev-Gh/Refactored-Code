import 'package:flutter/material.dart';

import 'textField.dart';
import 'flatButton.dart';
import 'footerText.dart';

class MainSignupForm extends StatelessWidget {
  const MainSignupForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 30),
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        children: [
          TextFieldComp(
            text: "First Name",
            hintText: "Vijay",
            obscureText: false,
          ),
          SizedBox(height: 30),
          TextFieldComp(
            text: "Last Name",
            hintText: "Bhuva",
            obscureText: false,
          ),
          SizedBox(height: 30),
          TextFieldComp(
            text: "Email",
            hintText: "vijaybhuva@gmail.com",
            obscureText: false,
          ),
          SizedBox(height: 30),
          TextFieldComp(
            text: "Password",
            hintText: "⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫",
            obscureText: true,
          ),
          SizedBox(height: 30),
          TextFieldComp(
            text: "Confirm Password",
            hintText: "⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫ ⚫",
            obscureText: true,
          ),
          SizedBox(height: 40),
          FlatButtonComp(text: "Sign Up"),
          buildFooterText(
            context,
            "Already have an account? Sign in",
            "pop",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
