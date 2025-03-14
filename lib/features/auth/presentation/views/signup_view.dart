import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: SignUpViewBody(),
    );
  }
}
