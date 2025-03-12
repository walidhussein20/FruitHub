import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "أو",
            style: TextStyles.semiBold16,
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
      ],
    );
  }
}
