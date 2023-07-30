import 'package:flutter/material.dart';
import 'package:new_app/Views/signUp.dart';
import 'package:provider/provider.dart';
import 'package:new_app/provider.dart';

import '../../extractedWidgets.dart';
import '../../auth/authRepo.dart';

class SignUpDetails extends StatefulWidget {
  AWSauthRepo auth;
  SignUpDetails({required this.auth});
  @override
  State<SignUpDetails> createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.read<SignUpSteps>().initialState();
    return Consumer<SignUpSteps>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              if (value.step == 1) {
                Navigator.pop(context);
              }
              if (value.step == 3) {
                value.nextState('What’s your password?', 'Password', .67, 2);
                return;
              } else {
                value.initialState();
              }
            },
          ),
          title: Text(value.appBarTitle.toString()),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFIeld(
                  title: value.textFieldTitle.toString(),
                  controller: _controller),
              CustomTextFIeld(title: 'Verify Code', controller: _pass),
              GestureDetector(
                  onTap: () {
                    context.read<Auth>().sendCode(
                        context.read<Auth>().email.toString(), _pass.text);
                  },
                  child: CustomButton(buttonName: 'Verify')),
                  GestureDetector(
                    onTap: () {
                      context.read<Auth>().createUser( context.read<Auth>().email.toString(), _controller.text);
                    },
                    child: CustomButton(buttonName: 'save')),
              // CustomTextFIeld(controller: _user),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('${value.step} of 3')],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FractionallySizedBox(
                      widthFactor: value.progress,
                      child: Container(
                        height: 8,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF6A5AE0)),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (value.step == 1) {
                        value.nextState(
                            'What’s your password?', 'Password', .67, 2);
                        context.read<Auth>().setEmail(_controller.text);
                        return;
                      }
                      if (value.step == 2) {
                        value.nextState('Create a username', 'Username', 1, 3);
                        context.read<Auth>().setPass(_controller.text);
                        return;
                      } else {
                        context.read<Auth>().signUp(
                            context.read<Auth>().email.toString(),
                            context.read<Auth>().password.toString(),
                            _controller.text);
                             
                      }
                      // widget.auth
                      //     .signUp(_controller.text, _pass.text, _user.text);

                      // page += 1;
                      // _progress += .34;
                      // setState(() {});
                    },
                    child: CustomButton(
                      buttonName: 'Next',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
