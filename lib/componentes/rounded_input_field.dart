import 'package:flutter/material.dart';
import 'package:login_registration/componentes/text_field_container.dart';
import 'package:login_registration/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final IconData suffixIcon;
  const RoundedInputField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
    required this.obscureText,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(suffixIcon),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
