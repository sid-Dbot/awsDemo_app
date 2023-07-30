import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:new_app/auth/authRepo.dart';
import 'package:new_app/provider.dart';

import 'Views/landingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int, Color> color = {
    50: Color.fromRGBO(51, 153, 255, .1),
    100: Color.fromRGBO(51, 153, 255, .2),
    200: Color.fromRGBO(51, 153, 255, .3),
    300: Color.fromRGBO(51, 153, 255, .4),
    400: Color.fromRGBO(51, 153, 255, .5),
    500: Color.fromRGBO(51, 153, 255, .6),
    600: Color.fromRGBO(51, 153, 255, .7),
    700: Color.fromRGBO(51, 153, 255, .8),
    800: Color.fromRGBO(51, 153, 255, .9),
    900: Color.fromRGBO(51, 153, 255, 1),
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Auth(awSauthRepo: AWSauthRepo()),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpSteps(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFEFEEFC),
          appBarTheme: AppBarTheme(
              elevation: 0,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
              centerTitle: true,
              backgroundColor: Color(0xFFEFEEFC),
              foregroundColor: Colors.black),
          fontFamily: 'Rubik',
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: MaterialColor(0xFF6A5AE0, color),
        ),
        home: const LandingScreen(),
      ),
    );
  }
}
