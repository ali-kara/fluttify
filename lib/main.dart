import 'package:flutter/material.dart';
import 'package:fluttify/FingerprintAuth.dart';
import 'package:fluttify/stepperwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: FingerprintAuth(),
      ),
      routes: {
        "/auth": (context) => const FingerprintAuth(),
        "/main": (context) => const StepperWidgetDemo(),
      },
      initialRoute: "/auth",
      title: 'Material App',
    );
  }
}
