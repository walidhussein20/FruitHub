import 'package:flutter/material.dart';

import 'package:fruites_e_commerce/core/widgets/custom_button.dart';
import 'package:fruites_e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(height: 16),
            TermsAndConditions(),
            SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
            ),
            SizedBox(height: 26),
            HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
