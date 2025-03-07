import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:fruites_e_commerce/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruites_e_commerce/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => Container());
  }
}
