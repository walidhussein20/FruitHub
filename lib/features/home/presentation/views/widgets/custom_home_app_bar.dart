import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xffEEF8ED),
        ),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(
          color: Color(0xff949D9E),
        ),
      ),
      subtitle: Text(
        'أحمد مصطفي',
        style: TextStyles.bold16,
      ),
      leading: Image.asset(Assets.imagesProfileImage),
    );
  }
}
