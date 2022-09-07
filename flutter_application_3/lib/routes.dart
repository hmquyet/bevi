import 'package:flutter/material.dart';
import 'package:flutter_application_3/LoginPage.dart';
import 'package:flutter_application_3/SettingPagee.dart';
import 'package:flutter_application_3/HomePage.dart';


class RoutesManager {
  static const String Login = '/';
  static const String Home = '/Home';
  static const String Setting = '/Setting';
  

  static Route<dynamic> genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case Home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      
      case Setting:
        return MaterialPageRoute(
          builder: (context) => SettingPage(),
        );
     

      default:
        throw FormatException('');
    }
  }
}
