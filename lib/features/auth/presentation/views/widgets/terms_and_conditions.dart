import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChanged: (bool value) {
            isTermsAccepted = value;
            setState(() {});
          },
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xff949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
