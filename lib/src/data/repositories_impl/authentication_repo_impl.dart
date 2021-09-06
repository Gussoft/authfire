
import 'dart:async';

import 'package:authfire/src/domain/repositories/authentication_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepoImpl implements AuthenticationRepo{

  final FirebaseAuth _auth;
  late User? _user;

  final Completer<void> _completer = Completer();

  AuthenticationRepoImpl(this._auth){
    print('Sabee');
    _init();
  }

  @override
  Future<User?> get user async {
    await _completer.future;
    return _user;
  }

  void _init() async{
    _auth.authStateChanges()
        .listen((User? user){
            if(!_completer.isCompleted){
              _completer.complete();
            _user = user;
        }
    });
  }

}