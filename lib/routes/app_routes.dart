import 'package:flutter/material.dart';
import 'package:smartapp/presentation/get_started_screen/get_started_screen.dart';
import 'package:smartapp/presentation/signup_screen/signup_screen.dart';
import 'package:smartapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:smartapp/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:smartapp/presentation/analysis_screen/analysis_screen.dart';
import 'package:smartapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String signupScreen = '/signup_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String analysisScreen = '/analysis_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    getStartedScreen: (context) => GetStartedScreen(),
    signupScreen: (context) => SignupScreen(),
    signInScreen: (context) => SignInScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    analysisScreen: (context) => AnalysisScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
