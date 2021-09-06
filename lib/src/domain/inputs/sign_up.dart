
import 'package:firebase_auth/firebase_auth.dart';

class SignUpData{
  final String name, lastname, email, password;

  SignUpData(this.name, this.lastname, this.email, this.password);
}

class SignUpResponse{
  final String? error;
  final User? user;

  SignUpResponse(this.error, this.user);
}