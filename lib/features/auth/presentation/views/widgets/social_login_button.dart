import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.socialName,
      required this.socialImage,
      required this.onTap});
  final String socialName;
  final String socialImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xffDDDFDF), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onTap,
        child: ListTile(
          leading: SvgPicture.asset(socialImage),
          title: Center(
            child: Text(
              socialName,
              style: TextStyles.semiBold16,
            ),
          ),
        ),
      ),
    );
  }
}
