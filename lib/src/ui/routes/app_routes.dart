import 'package:authfire/src/ui/pages/login/login.dart';
import 'package:authfire/src/ui/pages/register/register_page.dart';
import 'package:authfire/src/ui/pages/splash/splash_page.dart';
import 'package:authfire/src/ui/routes/routes.dart';
import 'package:flutter/widgets.dart' show BuildContext, Container, Widget;

Map<String, Widget Function(BuildContext)> get appRoutes =>{
  Routes.SPLASH: (_) => const SplashPage(),
  Routes.LOGIN: (_) => const Login(),
  Routes.HOME: (_) => Container(),
  Routes.REGISTER: (_) => const RegisterPage(),
};