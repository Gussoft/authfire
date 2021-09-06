import 'package:authfire/src/ui/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _controller = SplashController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

