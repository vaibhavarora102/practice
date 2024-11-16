import 'package:first/pages/first_page.dart';
import 'package:first/pages/home.dart';
import 'package:first/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: const FirstPage(),
        routes: {
          '/firstpage': (context) => const FirstPage(),
          '/homepage': (context) => const Home(),
          '/settingspage': (context) => const Settings(),
        },
    );
  }
}
