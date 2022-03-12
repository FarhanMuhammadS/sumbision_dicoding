import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Container(
                margin: EdgeInsets.only(bottom: 50),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                    'assets/logo_splash.jpg',
                  ),
                 ),
                ),
              ),
              Text(
                'fARSTORE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.normal,
                ),
              ),
           ],
         ),
      ),
    );
  }
}