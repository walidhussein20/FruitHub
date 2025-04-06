import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruites_e_commerce/core/helper_functions/on_generate_routes.dart';
import 'package:fruites_e_commerce/core/services/shared_preferences_singleton.dart';
import 'package:fruites_e_commerce/core/utils/app_colors.dart';
import 'package:fruites_e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:fruites_e_commerce/firebase_options.dart';
import 'package:fruites_e_commerce/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
