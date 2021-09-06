
import 'package:authfire/src/domain/inputs/sign_up.dart';
import 'package:authfire/src/domain/repositories/sign_up_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepoImpl implements SignUpRepo{

  final FirebaseAuth _auth;

  SignUpRepoImpl(this._auth);

  @override
  Future<SignUpResponse> register(SignUpData data) async{
    try{
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: data.email,
          password: data.password
      );
      await userCredential.user!.updateDisplayName("${data.name} ${data.lastname}");
    
      return SignUpResponse(null, userCredential.user!);
    } on FirebaseAuthException catch(e){
      return SignUpResponse(e.code, null);
    }
  }

}