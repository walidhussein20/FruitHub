import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 64;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              right: itemWidth * .4,
              child: Image.asset(
                Assets.imagesTest,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemWidth * .5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  image: DecorationImage(
                      image: AssetImage(Assets.imagesFeaturedBackGroundImage),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    FeaturedItemButton(
                      text: 'تسوق الان',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 29,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
