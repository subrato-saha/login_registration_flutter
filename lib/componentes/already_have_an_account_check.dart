import 'package:flutter/material.dart';
import 'package:login_registration/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    super.key,
    required this.login,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't Have An Account ? " : "Already Have An Account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            login ? "SIGN UP" : "SIGN IN",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
