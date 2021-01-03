import 'package:flutter/material.dart';
import 'components/mainSignUpForm.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: "Poppins",
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: MainSignupForm(),
          )
        ],
      ),
    );
  }
}
