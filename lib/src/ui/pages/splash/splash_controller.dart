
import 'package:authfire/src/domain/repositories/authentication_repo.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class SplashController{

  final _auth = Get.i.find<AuthenticationRepo>();

  SplashController(){
    _init();
  }

  void _init() async{
    final user = await _auth.user;
    if(user != null){
      print('Welcome Gussoft!');
    }else{
      print('Welcome Extraño!');
    }
  }
}