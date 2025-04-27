import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class ActiveBottomNavigationBarIcon extends StatelessWidget {
  const ActiveBottomNavigationBarIcon(
      {super.key, required this.name, required this.image});
  final String name, image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffEEEEEE),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              child: SvgPicture.asset(
                image,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              name,
              style:
                  TextStyles.semiBold11.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
