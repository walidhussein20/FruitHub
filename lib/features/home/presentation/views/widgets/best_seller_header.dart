import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: TextStyles.bold16,
        ),
        Spacer(),
        Text(
          'المزيد',
          style: TextStyles.regular13.copyWith(
            color: Color(0xff949D9E),
          ),
        )
      ],
    );
  }
}
