import 'package:flutter/material.dart';
import 'package:fluttify/utils/biometric_auth_manager.dart';
import 'package:fluttify/core/colors.dart';
import 'package:fluttify/responsive/responsive_layout.dart';
import 'package:fluttify/screens/mobile_screen_layout.dart';
import 'package:fluttify/screens/web_screen_layout.dart';
import 'package:fluttify/stepperwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme(
          primary: backgroundColor,
          onPrimary: backgroundColor,
          secondary: backgroundColor,
          onSecondary: backgroundColor,
          error: backgroundColor,
          onError: backgroundColor,
          background: backgroundColor,
          onBackground: backgroundColor,
          surface: backgroundColor,
          onSurface: backgroundColor,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: backgroundColor,
      ),
      // routes: {
      //   "/auth": (context) => const FingerprintAuth(),
      //   "/main": (context) => const StepperWidgetDemo(),
      // },
      // initialRoute: "/auth",
      home: const Scaffold(
        body: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ),
      ),
    );
  }
}
