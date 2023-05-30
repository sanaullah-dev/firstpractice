
import 'package:firstpractice/login.dart';
import 'package:firstpractice/signup.dart';
import 'package:firstpractice/splash_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static const String splash = "/";
  static const String login = "/login";
  static const String signupScreen = "/SignUpScreen";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case signupScreen:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
          settings: settings,
        );
    }

    return null;
  }
}
