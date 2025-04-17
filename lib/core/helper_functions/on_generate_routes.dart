import 'package:flutter/material.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/signup_view.dart';
import 'package:fruites_e_commerce/features/auth/presentation/views/signin_view.dart';
import 'package:fruites_e_commerce/features/home/presentation/views/home_view.dart';
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
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());
    default:
      return MaterialPageRoute(builder: (context) => Container());
  }
}
