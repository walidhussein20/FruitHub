import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruites_e_commerce/core/widgets/custom_search_text_field.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/best_seller_header.dart';

import 'package:fruites_e_commerce/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/featured_item.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomHomeAppBar(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomSearchTextField(
                  hintText: 'ابحث عن.......',
                ),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                BestSellerHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
        )
      ],
    );
  }
}
