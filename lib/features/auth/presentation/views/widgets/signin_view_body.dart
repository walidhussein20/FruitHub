import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/core/widgets/custom_button.dart';
import 'package:fruites_e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:fruites_e_commerce/core/widgets/password_field.dart';
import 'package:fruites_e_commerce/features/auth/presentation/cubits/cubit/signin_cubit.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/or_divider.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context
                        .read<SigninCubit>()
                        .signInWithEmailAndPassword(email, password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
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
                onTap: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
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
                onTap: () {
                  context.read<SigninCubit>().signInFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
