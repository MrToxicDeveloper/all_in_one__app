import 'package:all_in_one_app/home_screen/provider/home_provider.dart';
import 'package:all_in_one_app/home_screen/view/home_screen.dart';
import 'package:all_in_one_app/sign_in_up/provider/log_provider.dart';
import 'package:all_in_one_app/sign_in_up/view/sign_in.dart';
import 'package:all_in_one_app/sign_in_up/view/sign_up.dart';
import 'package:all_in_one_app/web_screen/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LogProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'signin',
        routes: {
          '/': (context) => HomeScreen(),
          'web': (context) => WebScreen(),
          'signin': (context) => SignInScreen(),
          'signup': (context) => SignUpScreen(),
        },
      ),
    ),
  );
}
