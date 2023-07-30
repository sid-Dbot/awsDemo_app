import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:new_app/extractedWidgets.dart';

import '../provider.dart';

class ResetPassword extends StatelessWidget {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              CustomText(
                  text:
                      'Enter your email and we will send you a link to reset your password.',
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
              CustomTextFIeld(title: 'Email Address', controller: _controller),
            ]),
            GestureDetector(
                onTap: () {
                  context.read<Auth>().resetPassword(_controller.text);
                },
                child: CustomButton(buttonName: 'Reset Password')),
          ],
        ),
      ),
    );
  }
}
