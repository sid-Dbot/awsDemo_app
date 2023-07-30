import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:new_app/Views/resetPassword.dart';
import 'package:new_app/extractedWidgets.dart';
import 'package:new_app/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _email = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(children: [
            CustomButton(
              buttonName: 'Login with Google',
              color: Colors.white,
              textColor: Colors.black,
            ),
            CustomButton(
              buttonName: 'Login with Facebook',
              color: Color(0xFF0056B2),
              textColor: Colors.white,
            ),
            CustomText(
                text: 'OR',
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16),
            CustomTextFIeld(title: 'Email Address', controller: _email),
            CustomTextFIeld(title: 'Password', controller: _password),
            GestureDetector(
                onTap: () {
                  context.read<Auth>().signIn(_email.text, _password.text);
                  context.read<Auth>().createUser(_email.text, _email.text);
                },
                child: CustomButton(buttonName: 'Login')),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ));
              },
              child: CustomText(
                  text: 'Forgot password?',
                  color: Color(0xFF6A5AE0),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )
          ]),
        ),
      ),
    );
  }
}
