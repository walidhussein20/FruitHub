import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = '/onBoardingView1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingViewBody(),
      ),
    );
  }
}
