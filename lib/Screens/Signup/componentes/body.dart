import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_registration/Screens/Login/login_screen.dart';
import 'package:login_registration/Screens/Signup/componentes/background.dart';
import 'package:login_registration/Screens/Signup/componentes/or_devider.dart';
import 'package:login_registration/Screens/Signup/componentes/social_icon.dart';
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
      child: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.4,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedInputField(
                    hintText: "Enter Your Email",
                    icon: Icons.person,
                    onChanged: (value) {},
                    obscureText: false,
                    suffixIcon: Icons.email),
                RoundedInputField(
                    hintText: "Enter Your Password",
                    icon: Icons.lock,
                    onChanged: (value) {},
                    obscureText: true,
                    suffixIcon: Icons.visibility),
                RoundedButton(text: "SIGNUP", press: () {}),
                AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    }),
                OrDevider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(
                        imgSrc: "assets/icons/facebook.svg", press: () {}),
                    SocialIcon(
                        imgSrc: "assets/icons/twitter.svg", press: () {}),
                    SocialIcon(
                        imgSrc: "assets/icons/google-plus.svg", press: () {}),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
