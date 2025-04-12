import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruites_e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/signin_view.dart';

class OnBoardingPageViewItems extends StatelessWidget {
  const OnBoardingPageViewItems(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title,
      this.color,
      required this.isSkip});
  final String image, backGroundImage, subtitle;
  final Widget title;
  final Color? color;
  final bool isSkip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroundImage,
                  color: color ?? Color(0xffFDF4E2),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isSkip,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool('isOnboardingSeen', true);
                      Navigator.of(context)
                          .pushReplacementNamed(LoginView.routeName);
                    },
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: Color(0xff949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: Color(0xff4E5556),
            ),
          ),
        )
      ],
    );
  }
}
