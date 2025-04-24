import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/widgets/fruit_item.dart';

class BestSellerGrideView extends StatelessWidget {
  const BestSellerGrideView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
