import 'package:flutter/material.dart';
import 'package:flutter_application_3/routes.dart';
//screens
import 'package:flutter_application_3/LoginPage.dart';
import 'package:flutter_application_3/SettingPagee.dart';
import 'package:flutter_application_3/HomePage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      
      home: LoginScreen(),
     
      initialRoute: RoutesManager.Login,
      onGenerateRoute: RoutesManager.genarateRoute, 
    );
  }
}


