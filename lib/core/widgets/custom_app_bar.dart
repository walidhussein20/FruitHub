import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';

AppBar buildAppBar(context, {required String title, IconData? icon}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      )
    ],
  );
}
