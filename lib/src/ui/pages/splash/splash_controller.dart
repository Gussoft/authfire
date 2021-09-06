
import 'package:authfire/src/domain/repositories/authentication_repo.dart';
import 'package:authfire/src/ui/routes/routes.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class SplashController extends SimpleNotifier{

  final _auth = Get.i.find<AuthenticationRepo>();

  String? _routeName;
  String? get routeName => _routeName;

  SplashController(){
    _init();
  }

  void _init() async{
    final user = await _auth.user;
    _routeName = user != null ? Routes.HOME: Routes.LOGIN;
    notify();
  }
}