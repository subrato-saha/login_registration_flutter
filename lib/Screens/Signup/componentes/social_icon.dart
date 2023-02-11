import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:login_registration/constants.dart";

class SocialIcon extends StatelessWidget {
  final String imgSrc;
  final VoidCallback press;
  const SocialIcon({
    super.key,
    required this.imgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: kPrimaryLightColor),
              shape: BoxShape.circle),
          child: InkWell(
            child: SvgPicture.asset(
              imgSrc,
              width: 20,
              height: 20,
            ),
          ),
        ),
      ),
    );
  }
}
