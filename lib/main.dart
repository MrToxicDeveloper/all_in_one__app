import 'package:all_in_one_app/home_screen/provider/home_provider.dart';
import 'package:all_in_one_app/home_screen/view/home_screen.dart';
import 'package:all_in_one_app/web_screen/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'web': (context) => WebScreen(),
        },
      ),
    ),
  );
}
