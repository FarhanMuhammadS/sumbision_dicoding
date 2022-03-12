import 'package:flutter/material.dart';
import 'package:shoes/daftar_page.dart';
import 'package:shoes/home_page.dart';
import 'package:shoes/login_page.dart';
import 'package:shoes/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in':(context) => LoginPage(),
      },
    );
  }
}