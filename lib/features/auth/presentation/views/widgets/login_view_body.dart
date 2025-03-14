import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/core/widgets/custom_button.dart';
import 'package:fruites_e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            SizedBox(height: 24),
            DontHaveAnAccountWidget(),
            SizedBox(height: 24),
            OrDivider(),
            SizedBox(height: 18),
            SocialLoginButton(
              socialName: 'تسجيل بواسطة جوجل',
              socialImage: Assets.imagesGoogleImage,
              onTap: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              socialName: 'تسجيل بواسطة أبل',
              socialImage: Assets.imagesAppleImage,
              onTap: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              socialName: 'تسجيل بواسطة فيسبوك',
              socialImage: Assets.imagesFacebookImage,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
