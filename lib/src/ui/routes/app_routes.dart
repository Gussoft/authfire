import 'package:authfire/src/ui/pages/splash/splash_page.dart';
import 'package:authfire/src/ui/routes/routes.dart';
import 'package:flutter/widgets.dart' show Widget, BuildContext;

Map<String, Widget Function(BuildContext)> get appRoutes =>{
  Routes.SPLASH: (_) => const SplashPage(),
};