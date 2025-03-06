import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPageViewItems extends StatelessWidget {
  const OnBoardingPageViewItems(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title,
      this.color});
  final String image, backGroundImage, subtitle;
  final Widget title;
  final Color? color;

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
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text('تخط'),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
