import 'package:flutter/material.dart';
import 'components/divider.dart';
import 'components/raisedButton.dart';
import 'components/textfield.dart';
import 'constant.dart';

void main() => runApp(MaterialApp(home: LoginUI()));

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              "LearnCode",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: 40),
            TextFieldComp(
              text: "Username",
              obscureText: false,
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 25),
            TextFieldComp(
              text: "Password",
              obscureText: true,
              icon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white60,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: primaryColor,
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            buildDivider(),
            SizedBox(height: 30),
            RaisedButtonComp(
              imgSrc: "assets/facebook.png",
              text: "Continue with Facebook",
            ),
            SizedBox(height: 20),
            RaisedButtonComp(
              imgSrc: "assets/google.png",
              text: "Continue with Google",
            ),
          ],
        ),
      ),
    );
  }
}
