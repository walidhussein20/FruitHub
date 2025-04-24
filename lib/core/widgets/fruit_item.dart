import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_rounded),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(Assets.imagesTest),
                Spacer(),
                ListTile(
                  title: Text(
                    'بطيخ',
                    style: TextStyles.semiBold13,
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '20جنية',
                        style: TextStyles.bold13.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Text(
                        ' / الكيلو',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
