
import 'package:authfire/src/domain/inputs/sign_up.dart';

abstract class SignUpRepo{

  Future<SignUpResponse> register(SignUpData data);


}

