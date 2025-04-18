import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruites_e_commerce/core/utils/app_images.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x0A000000),
          blurRadius: 9,
          offset: Offset(0, 2),
          spreadRadius: 0,
        ),
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyles.bold13.copyWith(
            color: Color(0xff949D9E),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(
              Assets.imagesSearch,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(Assets.imagesSetting),
          ),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          border: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
