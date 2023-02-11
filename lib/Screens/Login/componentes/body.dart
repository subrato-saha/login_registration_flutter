import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_registration/Screens/Login/componentes/background.dart';
import 'package:login_registration/Screens/Signup/signup_screen.dart';
import 'package:login_registration/componentes/already_have_an_account_check.dart';
import 'package:login_registration/componentes/rounded_button.dart';
import 'package:login_registration/componentes/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.4,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedInputField(
                  hintText: "Your Email",
                  icon: Icons.person,
                  onChanged: (value) {},
                  obscureText: false,
                  suffixIcon: Icons.email,
                ),
                RoundedInputField(
                  hintText: "Your Password",
                  icon: Icons.lock,
                  onChanged: (value) {},
                  obscureText: true,
                  suffixIcon: Icons.visibility,
                ),
                RoundedButton(text: "LOGIN", press: () {}),
                AlreadyHaveAnAccountCheck(
                  login: true,
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                )
              ]),
        ),
      ),
    );
  }
}
