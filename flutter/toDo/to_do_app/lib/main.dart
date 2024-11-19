import 'package:flutter/material.dart';
import 'package:to_do_app/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 246, 234, 124),
      ))
    );
  }
}

