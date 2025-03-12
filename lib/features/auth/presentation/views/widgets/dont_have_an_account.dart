import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟',
          style: TextStyles.semiBold16.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text('قم بإنشاء حساب', style: TextStyles.semiBold16),
        ),
      ],
    );
  }
}
