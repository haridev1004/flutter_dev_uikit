import 'package:flutter/material.dart';
import 'package:flutter_dev_uikit/screens/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900)),
        debugShowCheckedModeBanner: false,
        home: const GetStartedScreen());
  }
}
