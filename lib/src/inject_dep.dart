
import 'package:authfire/src/data/repositories_impl/sign_up_repo_impl.dart';
import 'package:authfire/src/domain/repositories/sign_up_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/meedu.dart';
import 'data/repositories_impl/authentication_repo_impl.dart';
import 'domain/repositories/authentication_repo.dart';

void injectDep(){

  /*Get.i.put<AuthenticationRepo>(
      AuthenticationRepoImpl(FirebaseAuth.instance)
  );*/
  Get.i.lazyPut<AuthenticationRepo>(() =>
      AuthenticationRepoImpl(FirebaseAuth.instance)
  );
  Get.i.lazyPut<SignUpRepo>(() =>
      SignUpRepoImpl(FirebaseAuth.instance)
  );
}