import 'package:flutter/material.dart';

import 'components/logo.dart';
import 'components/mainLoginForm.dart';

class LoginUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: LogoComp(),
            ),
            Expanded(
              flex: 2,
              child: MainLoginFormComp(),
            ),
          ],
        ),
      ),
    );
  }
}
