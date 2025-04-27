import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/home/domine/entities/bottom_navigation_bar_entity.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/active_bottom_navigation_bar_icon.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/inactive_bottom_navigation_bar_icon.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveBottomNavigationBarIcon(
            name: bottomNavigationBarEntity.name,
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveBottomNavigationBarIcon(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
