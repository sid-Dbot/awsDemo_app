import 'dart:ui';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Views/login.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:new_app/Views/signUp.dart';
import 'package:new_app/models/ModelProvider.dart';

import '../amplifyconfiguration.dart';
import '../extractedWidgets.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    // Add any Amplify plugins you want to use
    final datastorePlugin = AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        authModeStrategy: AuthModeStrategy.multiAuth);
    final api = AmplifyAPI();
    await Amplify.addPlugins([datastorePlugin, api]);
    final authPlugin = AmplifyAuthCognito();
    await Amplify.addPlugin(authPlugin);

    // You can use addPlugins if you are going to be adding multiple plugins
    // await Amplify.addPlugins([authPlugin, analyticsPlugin]);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF6A5AE0),
                image: DecorationImage(
                    image: AssetImage(
                  'assets/img/bg.png',
                ))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/img/App Logo.png',
                        scale: 3,
                      ),
                    ),
                    Image.asset(
                      'assets/img/Illustration.png',
                      scale: 2.6,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .4,
                      width: MediaQuery.of(context).size.width - 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Text(
                            'Login or Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                                text:
                                    'Login or create an account to take quiz,\ntake part in challenge, and more.',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: CustomButton(
                                buttonName: 'Login', color: Color(0xFF6A5AE0)),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ));
                              },
                              child: CustomButton(
                                buttonName: 'Create an account',
                                color: Color(0xFFE6E6E6),
                                textColor: Color(0xFF6A5AE0),
                              )),
                          TextButton(
                            onPressed: () {},
                            child: CustomText(
                                text: 'Later',
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
