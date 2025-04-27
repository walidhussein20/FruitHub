import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/widgets/custom_buttom_navigation_bar.dart';

import 'package:fruites_e_commerce/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CoustomButtomNavigationBar(),
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
