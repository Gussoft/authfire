
import 'package:authfire/src/inject_dep.dart';
import 'package:authfire/src/ui/routes/app_routes.dart';
import 'package:authfire/src/ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_meedu/router.dart' as router;
void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  injectDep();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghost',
      navigatorKey: router.navigatorKey,
      initialRoute: Routes.SPLASH,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}


 