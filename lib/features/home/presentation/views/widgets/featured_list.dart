import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 64;
    final responsiveHeight = screenWidth * (158 / 342);
    return SizedBox(
      height: responsiveHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FeaturedItem(),
          );
        },
      ),
    );
  }
}
