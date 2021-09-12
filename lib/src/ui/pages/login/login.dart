import 'package:authfire/src/ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as route;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    route.pushReplacementNamed(Routes.REGISTER);
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

