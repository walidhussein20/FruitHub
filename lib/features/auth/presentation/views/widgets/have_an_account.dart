import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'تمتلك حساب بالفعل؟',
          style: TextStyles.semiBold13.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'تسجيل دخول',
            style: TextStyles.semiBold13,
          ),
        ),
      ],
    );
  }
}
