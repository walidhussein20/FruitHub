import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/features/on_boarding/presentation/views/widgets/on_boarding_page_view_items.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnBoardingPageViewItems(
          image: Assets.imagesPageView1Image,
          backGroundImage: Assets.imagesPageView1BackGroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text(
                'HUB',
                style: TextStyle(color: Color(0xffF4A91F)),
              ),
              Text(
                'Fruit',
                style: TextStyle(color: Color(0xff1B5E37)),
              ),
            ],
          ),
        ),
        OnBoardingPageViewItems(
            image: Assets.imagesPageView2Image,
            backGroundImage: Assets.imagesPageVeiw2BackGroundImage,
            color: Color(0xffC8EFD8),
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text('ابحث وتسوق')),
      ],
    );
  }
}
