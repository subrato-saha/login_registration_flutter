import 'package:flutter/material.dart';
import 'package:login_registration/constants.dart';

class OrDevider extends StatelessWidget {
  const OrDevider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDevider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          buildDevider(),
        ],
      ),
    );
  }

  Expanded buildDevider() {
    return const Expanded(
      child: Divider(
        height: 1.5,
        color: kPrimaryColor,
      ),
    );
  }
}
