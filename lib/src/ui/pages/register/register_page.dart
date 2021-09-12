import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SizedBox(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              color: Colors.transparent,
              child: Column(
                children: [
                 TextUserName(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget TextUserName(){
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Name',
        border: OutlineInputBorder(),
      ),
      onChanged: (text){

      },
    );
  }
}
