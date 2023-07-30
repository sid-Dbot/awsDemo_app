import 'package:flutter/material.dart';
import 'package:new_app/extractedWidgets.dart';

import '../auth/authRepo.dart';
import 'Sign Up steps/steps.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  String? email;
  String? password;
  String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpDetails(auth: AWSauthRepo()),
                  ));
            },
            child: CustomButton(
                buttonName: 'Sign Up with email', color: Color(0xFF6A5AE0)),
          ),
          CustomButton(
            buttonName: 'Sign Up with Google',
            color: Colors.white,
            textColor: Colors.black,
          ),
          CustomButton(
            buttonName: 'Sign Up with Facebook',
            color: Color(0xFF0056B2),
            textColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: 'Already have an account?',
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: CustomText(
                  text: 'Login',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
