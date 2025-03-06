import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/widgets/custom_botton.dart';
import 'package:fruites_e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBotton(
            onPressed: () {},
            text: 'ابدأ الان',
          ),
        ),
        SizedBox(
          height: 43,
        )
      ],
    );
  }
}
