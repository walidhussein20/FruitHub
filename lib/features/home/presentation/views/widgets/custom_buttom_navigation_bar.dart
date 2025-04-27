import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/home/domine/entities/bottom_navigation_bar_entity.dart';

import 'package:fruites_e_commerce/features/home/presentation/views/widgets/navigation_bar_item.dart';

class CoustomButtomNavigationBar extends StatefulWidget {
  const CoustomButtomNavigationBar({super.key});

  @override
  State<CoustomButtomNavigationBar> createState() =>
      _CoustomButtomNavigationBarState();
}

class _CoustomButtomNavigationBarState
    extends State<CoustomButtomNavigationBar> {
  int selectedIndaex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
          children: bottomNavigationBarItems.asMap().entries.map((e) {
        var index = e.key;
        var entity = e.value;
        return Expanded(
          flex: selectedIndaex == index ? 3 : 2,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndaex = index;
              });
            },
            child: NavigationBarItem(
              isSelected: selectedIndaex == index,
              bottomNavigationBarEntity: entity,
            ),
          ),
        );
      }).toList()),
    );
  }
}
