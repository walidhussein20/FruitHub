import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        height: 24,
        width: 24,
        duration: Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isChecked ? Colors.transparent : Color(0xffDDDFDF),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: SvgPicture.asset(Assets.imagesChecked),
              )
            : SizedBox(),
      ),
    );
  }
}
